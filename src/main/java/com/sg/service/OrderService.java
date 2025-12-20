package com.sg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sg.Dao.OrderDao;
import com.sg.model.Order;

@Service
public class OrderService {

    @Autowired
    private OrderDao orderDao;

    public List<Order> getOrdersByUser(Integer userId) {
        return orderDao.findByUserId(userId);
    }

    public Order saveOrder(Order order) {
        return orderDao.save(order);
    }
}
