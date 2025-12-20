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

    public void saveOrder(Order order) {
        orderDao.save(order);
    }

    public List<Order> getAllOrders() {
        return orderDao.findAll();
    }
}
