package com.sg.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.sg.model.CartItem;
import com.sg.model.Product;
import com.sg.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class CartController {

    @Autowired
    ProductService productService;

    @GetMapping("/add-to-cart/{id}")
    public String addToCart(@PathVariable Integer id,
                            HttpSession session) {

        List<CartItem> cart =
          (List<CartItem>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        Product product = productService.getProductById(id);

        if (product != null) {
            cart.add(new CartItem(product, 1));
            System.out.println("Product added: " + product.getName());
        }

        session.setAttribute("cart", cart);

        return "redirect:/cart";
    }


    @GetMapping("/cart")
    public String showCart(HttpSession session, Model model) {

        List<CartItem> cart =
            (List<CartItem>) session.getAttribute("cart");

        double totalAmount = 0;

        if (cart != null) {
            for (CartItem item : cart) {
                totalAmount += item.getProduct().getPrice()
                               * item.getQuantity();
            }
        }

        model.addAttribute("cart", cart);
        model.addAttribute("totalAmount", totalAmount);

        return "cart";
    }

    
    @GetMapping("/checkout")
    public String checkout(HttpSession session, Model model) {

        List<CartItem> cart =
            (List<CartItem>) session.getAttribute("cart");

        if (cart == null || cart.isEmpty()) {
            return "redirect:/cart";
        }

        double total = 0;
        for (CartItem item : cart) {
            total += item.getProduct().getPrice() * item.getQuantity();
        }

        model.addAttribute("cart", cart);
        model.addAttribute("total", total);

        return "checkout";
    }
    
    @PostMapping("/place-order")
    public String placeOrder(HttpSession session, Model model) {

        session.removeAttribute("cart");

        model.addAttribute("msg", "Order placed successfully!");

        return "order-success";
    }
    
    @GetMapping("/cart/increase/{id}")
    public String increaseQty(@PathVariable int id, HttpSession session) {

        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

        if (cart != null) {
            for (CartItem item : cart) {
                if (item.getProduct().getId() == id) {
                    item.setQuantity(item.getQuantity() + 1);
                    break;
                }
            }
        }
        session.setAttribute("cart", cart);
        return "redirect:/cart";
    }

    @GetMapping("/cart/decrease/{id}")
    public String decreaseQty(@PathVariable int id, HttpSession session) {

        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

        if (cart != null) {
            cart.removeIf(item -> {
                if (item.getProduct().getId() == id) {
                    item.setQuantity(item.getQuantity() - 1);
                    return item.getQuantity() <= 0;
                }
                return false;
            });
        }
        session.setAttribute("cart", cart);
        return "redirect:/cart";
    }

    @GetMapping("/cart/remove/{id}")
    public String removeItem(@PathVariable int id, HttpSession session) {

        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

        if (cart != null) {
            cart.removeIf(item -> item.getProduct().getId() == id);
        }
        session.setAttribute("cart", cart);
        return "redirect:/cart";
    }




}
