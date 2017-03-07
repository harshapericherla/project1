package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CartDao;
import com.niit.dao.CartItemDao;
import com.niit.model.Cart;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
	private CartDao cartDao;

	@Override
	public Cart getCart(int cartId) {
		return cartDao.getCart(cartId);
	}
    
}
