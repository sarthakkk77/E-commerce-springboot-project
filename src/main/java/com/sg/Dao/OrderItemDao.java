package com.sg.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sg.model.Order;
import com.sg.model.OrderItem;

@Repository
public interface OrderItemDao extends JpaRepository<OrderItem, Integer> {
    List<OrderItem> findByOrder(Order order);
}


