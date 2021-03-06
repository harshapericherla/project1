package com.niit.dao;

import com.niit.model.Cart;
import com.niit.model.CartItem;

public interface CartItemDao {
 void addCartItem(CartItem cartItem);
 CartItem getCartItem(int cartItem);
 void removeCartItem(CartItem cartItem);
 void removeAllCartItems(Cart cart);
}
