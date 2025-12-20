package com.sg.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.sg.model.Order;

public interface OrderDao extends JpaRepository<Order, Integer> {
}
