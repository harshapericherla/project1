package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.CartItem;

@Repository
public class CartItemDaoImpl implements CartItemDao {
   @Autowired
   private SessionFactory sessionFactory;
	public void addCartItem(CartItem cartItem) {
		 Session session = sessionFactory.openSession();
		 session.saveOrUpdate(cartItem);
		 session.flush();
		 session.close();
		
	}
	@Override
	public CartItem getCartItem(int cartItemId) {
		Session session = sessionFactory.openSession();
		CartItem cartItem = (CartItem)session.get(CartItem.class,cartItemId);
		session.flush();
		session.close();
		return cartItem;
	}
	@Override
	public void removeCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.delete(cartItem);
		session.flush();
		session.close();
	}
	@Override
	public void removeAllCartItems(Cart cart) {
		// TODO Auto-generated method stub
		List<CartItem> cartItems = cart.getCartItems();
		for(CartItem cartItem:cartItems){
			removeCartItem(cartItem);
		}
	}
	

}
