package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface Productdao {
   Product saveproduct(Product product);
   List<Product> getallproducts();
   Product getProductById(int id);
   void deleteProduct(int id);
   void updateProduct(Product product);
}
