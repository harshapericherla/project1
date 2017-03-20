package com.niit.dao;

import java.io.IOException;
import java.util.List;

import javax.persistence.criteria.Order;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.CartItem;
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
		Cart cart=getCart(cartId);
		
		if(cart.getCartItems().size()==0 || cart==null){
	         throw new IOException();
		}
		else{
		  return cart;
		}
	}
	
    
}
