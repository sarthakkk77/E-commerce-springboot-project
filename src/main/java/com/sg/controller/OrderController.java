package com.sg.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.sg.model.Order;
import com.sg.model.User;
import com.sg.service.OrderItemService;
import com.sg.service.OrderService;

import jakarta.servlet.http.HttpSession;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;
    
    @Autowired
    private OrderItemService orderItemService;
    
    @GetMapping("/orders")
    public String orders(HttpSession session, Model model) {

        User user = (User) session.getAttribute("loggedInUser");
        if (user == null) return "redirect:/login";

        List<Order> orders =
            orderService.getOrdersByUser(user.getUserId());

        
        for (Order o : orders) {
            o.setItems(orderItemService.getItemsByOrder(o));
        }

        model.addAttribute("orders", orders);
        return "orders";
    }

   




}
