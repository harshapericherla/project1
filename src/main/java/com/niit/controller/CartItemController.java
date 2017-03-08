package com.niit.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Customer;
import com.niit.model.Product;
import com.niit.service.CartItemService;
import com.niit.service.CartService;
import com.niit.service.CustomerService;
import com.niit.service.Productservice;

@Controller
public class CartItemController {
	 
	
	static List<Product> listproduct  = new ArrayList<Product>();
  @Autowired
  private CartItemService cartItemService;
  @Autowired
  private CustomerService customerService;
  @Autowired
  private Productservice productService;
  @Autowired
  private CartService cartService;
  
  @RequestMapping("/cart/addCartItem/{pid}")
  @ResponseStatus(value=HttpStatus.NO_CONTENT)
  public void addCartItem(@PathVariable(value="pid") int productId){
	  
	  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	  String name = auth.getName();
	  System.out.println(name);
	  
	  if(name!="anonymousUser"){
	
      User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	  String username = user.getUsername();
	  
	  Customer customer = customerService.getCustomerByUsername(username);
	  Cart cart = customer.getCart();
	  List<CartItem> cartItems = cart.getCartItems();
	  Product product = productService.getProductById(productId);
	  
	  
	  for(int i=0;i<cartItems.size();i++){
		  CartItem cartItem = cartItems.get(i);
		  Product p = cartItem.getProduct();
		  if(p.getId() == productId){
			  cartItem.setQuantity(cartItem.getQuantity()+1);
			  cartItem.setTotalPrice(cartItem.getQuantity() * p.getPrice());
			  cartItemService.addCartItem(cartItem);
			  return;
		  }
	   
	  }
	  
	  CartItem cartItem = new CartItem();
	  cartItem.setQuantity(1);
	  cartItem.setTotalPrice(cartItem.getQuantity() *  product.getPrice());
	  cartItem.setProduct(product);
	  cartItem.setCart(cart);
	  cartItemService.addCartItem(cartItem);
	   
	  }
	  else{
		  
		  System.out.println("product has been added");
		  Product p = productService.getProductById(productId);
		  System.out.println("products present in the list are");
		  listproduct.add(p);
		  for(Product s:listproduct){
			  System.out.println(s.getId()+"name "+s.getName());
			  System.out.println("size of the list is "+listproduct.size());
		  }
	  }
	}
  
  @RequestMapping("/updatecart")  
  public String updatethecart(){
	
	  
	 
	  User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	  String username = user.getUsername();
	  
	  Iterator<Product> il = listproduct.iterator();
	  while(il.hasNext()){
		  Product s = (Product)il.next();
		  System.out.println("id that is persisted "+s.getId());
		  persist(s.getId(),username);
		  il.remove();
	    }
	  
	  return "redirect:/home";
  }
 
  public void persist(int productId,String username){
	  Customer customer = customerService.getCustomerByUsername(username);
	  Cart cart = customer.getCart();
	  List<CartItem> cartItems = cart.getCartItems();
	  Product product = productService.getProductById(productId);
	  
	  
	  for(int i=0;i<cartItems.size();i++){
		  CartItem cartItem = cartItems.get(i);
		  Product p = cartItem.getProduct();
		  if(p.getId() == productId){
			  cartItem.setQuantity(cartItem.getQuantity()+1);
			  cartItem.setTotalPrice(cartItem.getQuantity() * p.getPrice());
			  cartItemService.addCartItem(cartItem);
			  return;
		  }
	   
	  }
	  
	  CartItem cartItem = new CartItem();
	  cartItem.setQuantity(1);
	  cartItem.setTotalPrice(cartItem.getQuantity() *  product.getPrice());
	  cartItem.setProduct(product);
	  cartItem.setCart(cart);
	  cartItemService.addCartItem(cartItem);
	 }
  @RequestMapping("/cart/removeCartItem/{cartItemId}")
  @ResponseStatus(value=HttpStatus.NO_CONTENT)
  public void removeCartItem(@PathVariable int cartItemId){
	  CartItem cartItem= cartItemService.getCartItem(cartItemId);
	  cartItemService.removeCartItem(cartItem);
  }
  @RequestMapping("/cart/removeAllCartItems/{cartId}")
  @ResponseStatus(value=HttpStatus.NO_CONTENT)
  public void removeAllCartItems(@PathVariable int cartId){
	  Cart cart = cartService.getCart(cartId);
	  cartItemService.removeAllCartItems(cart);
  }
}
