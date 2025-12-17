package com.sg.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sg.model.Product;

@Repository
public interface ProductDao extends JpaRepository<Product, Integer>  {

}
