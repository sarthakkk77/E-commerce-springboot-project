package com.sg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sg.Dao.ProductDao;
import com.sg.model.Product;

@Service
public class ProductService {

	@Autowired
	ProductDao productDao;

	public List<Product> products() {
		List<Product> productList = productDao.findAll();
		for(Product product: productList) {
			product.setImageUrl(product.getName().toLowerCase());
		}

		return productList;
	}
	
	public Product getProductById(Integer id) {
	    return productDao.findById(id).orElse(null);
	}


}
