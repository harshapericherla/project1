package com.niit.dao;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.SetSimpleValueTypeSecondPass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Category;
import com.niit.model.Product;

@Repository
public class Productdaoimpl implements Productdao {
	
    @Autowired
	private SessionFactory sessionFactory;
       public Productdaoimpl(SessionFactory sessionFactory){
    	   this.sessionFactory=sessionFactory;
    	   System.out.println("creating instance for productdaoimpl");
       }
	public Product saveproduct(Product product) {
		Session session = sessionFactory.openSession();
		session.save(product);
		session.flush();
		session.close();
		System.out.println(product.getId());
		return product;
	}

	
	
   public List<Product> getallproducts(){
	   Session session = sessionFactory.openSession();
	   List<Product> products = session.createQuery("from Product").list();
	   session.close();
	   return products;
   }
   
   public byte[] loadImage(int productid){
	   Session session = sessionFactory.openSession();
	   Product product = (Product)session.get(Product.class, productid);
	   byte[] b = product.getPicture();
	   return b;
   }

public Product getProductById(int id) {
	Session session = sessionFactory.openSession();
	Product product = (Product)session.get(Product.class, id);
	session.close();
	return product;
}


public void deleteProduct(int id) {
	 Session session = sessionFactory.openSession();
	 Product product =(Product)session.get(Product.class, id);
	 session.delete(product);
	 session.flush();
	 session.close();
	
}

public void updateProduct(Product product) {
	Session session = sessionFactory.openSession();
	System.out.println(product.getId());
	session.update(product);
	session.flush();
	session.close();
}
public List<Product> getProductByDiscount(){
	Session session = sessionFactory.openSession();
	Query query = session.createQuery("from Product where category.id=?");
	query.setInteger(0, 2);
	List<Product> product = query.list();
	return product;
}
public List<Product> getProductByNew(){
	Session session = sessionFactory.openSession();
	Query query = session.createQuery("from Product where category.id=?");
	query.setInteger(0, 1);
	List<Product> product = query.list();
	return product;
}
}
