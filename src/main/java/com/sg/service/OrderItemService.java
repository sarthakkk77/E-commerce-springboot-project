package com.sg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sg.Dao.OrderItemDao;
import com.sg.model.Order;
import com.sg.model.OrderItem;

@Service
public class OrderItemService {

    @Autowired
    private OrderItemDao orderItemDao;

    public void save(OrderItem item) {
        orderItemDao.save(item);
    }

    public List<OrderItem> getItemsByOrder(Order order) {
        return orderItemDao.findByOrder(order);
    }

}
