package com.niit.dao;

import java.io.IOException;

import javax.persistence.criteria.Order;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.CustomerOrder;
@Repository
public class CartDaoImpl implements CartDao{

	@Autowired
    private SessionFactory sessionFactory;

	
	public Cart getCart(int cartId) {
		Session session = sessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class, cartId);
		session.close();
		return cart;
	}
	public Cart validate(int cartId) throws IOException{
		Cart cart1=getCart(cartId);
		System.out.println("cart -------------"+cart1);
		System.out.println("cart -------------"+cart1.getCartItems());
		if(cart1.getCartItems().size()==0){
		System.out.println("------------------hello----------------------"+cartId);
		
		throw new IOException();
		}
		else{
		CustomerOrder order = new CustomerOrder();
		order.setBillingAddress(cart1.getCustomer().getBillingAddress());
		order.setShippingAddress(cart1.getCustomer().getShippingAddress());
		order.setCart(cart1);
	    order.setCustomer(cart1.getCustomer());
		Session session = sessionFactory.openSession();
		session.save(order);
		session.flush();
		session.close();
		return cart1;
		}
	}
    
}
