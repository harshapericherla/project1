package com.niit.service;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Customer;

public interface CartItemService {
  void addCartItem(CartItem cartItem);
  CartItem getCartItem(int cartItemId);
  void removeCartItem(CartItem cartItem);
  void removeAllCartItems(Cart cart);
}
