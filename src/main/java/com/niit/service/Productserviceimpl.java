package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.Productdao;
import com.niit.model.Product;

@Service
public class Productserviceimpl implements Productservice{
	
   @Autowired
   private Productdao productdao;
   
  
	public Product saveproduct(Product product) {
		return productdao.saveproduct(product);
	}
	public List<Product> getallproducts(){
		return productdao.getallproducts();
	}
	
	public Product getProductById(int id) {
		return productdao.getProductById(id);
	}
	
	public void deleteProduct(int id) {
		productdao.deleteProduct(id);
	}
	
	public void updateProduct(Product product) {
		productdao.updateProduct(product);
		
	}

}
