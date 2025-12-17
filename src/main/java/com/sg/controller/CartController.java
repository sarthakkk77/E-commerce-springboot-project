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
    public String showCart(HttpSession session,
                           org.springframework.ui.Model model) {

        model.addAttribute("cart",
            session.getAttribute("cart"));

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




}
