package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CartItemDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;
@Service
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	private CartItemDao cartItemDao;
	
	public void addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		cartItemDao.addCartItem(cartItem);
		
	}

	@Override
	public CartItem getCartItem(int cartItemId) {
		// TODO Auto-generated method stub
		return cartItemDao.getCartItem(cartItemId);
	}

	@Override
	public void removeCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		cartItemDao.removeCartItem(cartItem);
	}

	@Override
	public void removeAllCartItems(Cart cart) {
		// TODO Auto-generated method stub
		cartItemDao.removeAllCartItems(cart);
	}

}
