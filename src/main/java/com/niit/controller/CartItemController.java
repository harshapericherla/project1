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
import org.springframework.ui.Model;
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
	 
	int count=1;
	static List<Product> listproduct  = new ArrayList<Product>();
	static List<Product> norepeat = new ArrayList<Product>();
	
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
		  
		  
		  Iterator<Product> itr = listproduct.iterator();
		  while(itr.hasNext()){
			  Product all = (Product)itr.next();
			  System.out.println("----ALL"+all.getId());
			  boolean isFound = false;
			  for(Product nr:norepeat){
				  System.out.println("-----nodup"+nr.getId());
				  if(nr.getId()==all.getId()){
					  System.out.println("duplicate element is "+all.getId());  
					  isFound = true;
					  nr.setQuantity(nr.getQuantity()+1);
					  nr.setPrice(nr.getQuantity()*all.getPrice());
				  }
				
				}
			  
			  if(!isFound)
				  norepeat.add(all);
			  itr.remove();
		  }  
	  }
	}
  
  @RequestMapping("/beforeCart/getBeforeLogin")
  public String displayCartBeforeLogin(Model model){
	  int totalPrice=0;
	  Iterator itd = norepeat.iterator();
	  while(itd.hasNext()){
		  Product p = (Product)itd.next();
		  totalPrice += p.getPrice(); 
	  }
	  model.addAttribute("listproduct",norepeat);
	  model.addAttribute("totalPrice",totalPrice);
	  return "cartbefore";
  }
  
  
  
  @RequestMapping("/beforeCart/remove/{pid}")
  public String beforeDelete(@PathVariable int pid){
	  
	  Iterator itd = norepeat.iterator();
	  while(itd.hasNext()){
		  Product p = (Product)itd.next();
		  if(p.getId()==pid){
			  itd.remove();
			  break;
		  }
	  }
	  return "redirect:/beforeCart/getBeforeLogin";
  }
  
  @RequestMapping("/beforeCart/removeAll")
  public String beforeDeleteAll(){
	  Iterator idl = norepeat.iterator();
	  while(idl.hasNext()){
		  Product p = (Product)idl.next();
		  idl.remove();
	  }
	  return "redirect:/beforeCart/getBeforeLogin";
  }
  @RequestMapping("/updatecart")  
  public String updatethecart(){
	 
	  User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	  String username = user.getUsername();
	  Iterator<Product> il = norepeat.iterator();
	  
	  while(il.hasNext()){
		  Product s = (Product)il.next();
		  System.out.println("id that is persisted "+s.getId());
		  persist(s.getId(),username);
		  il.remove();
	    }
	 return "redirect:/home";
  }
 @RequestMapping("/updatecheckout")
  public String updatetheCartCheckout(){
	  User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	  String username = user.getUsername();
	  Iterator<Product> il = norepeat.iterator();
	  
	  while(il.hasNext()){
		  Product s = (Product)il.next();
		  System.out.println("id that is persisted "+s.getId());
		  persist(s.getId(),username);
		  il.remove();
	    }
	 return "redirect:/before";
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
