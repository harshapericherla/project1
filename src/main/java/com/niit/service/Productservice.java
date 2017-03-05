package com.niit.service;
import java.util.*;
import com.niit.model.Product;

public interface Productservice {
 Product saveproduct(Product product);
 List<Product> getallproducts();
 Product getProductById(int id);
 void deleteProduct(int id);
 void updateProduct(Product product);
 byte[] loadImage(int productid);
 List<Product> getProductByDiscount();
}
