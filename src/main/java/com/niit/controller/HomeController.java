package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Product;
import com.niit.service.Categoryservice;
import com.niit.service.Productservice;

@Controller
public class HomeController {
	@Autowired
	private Categoryservice categoryservice;
	@Autowired
	private Productservice productservice;	
	
	
	
	
  public HomeController(){
	  System.out.println("I am running");
  }
  @RequestMapping("/home")
  public String home(HttpSession session,Model model){
	  
	 System.out.println("-------"+CartItemController.listproduct.size());
	 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	 String name = auth.getName();
	 
	 if(CartItemController.norepeat.size()!=0 && name!="anonymousUser"){
		 return "redirect:/updatecart";
	 }
	  session.setAttribute("categories", categoryservice.getcategories());
	  List<Product> products = productservice.getProductByDiscount();
	  model.addAttribute("discount",products);
	  return "home";
  }
  @RequestMapping("/aboutus")
  public String aboutus(){
	  return "aboutus";
  }
  
  @RequestMapping("/login")
  public String login(@RequestParam(value="error",required=false) String error,Model model,@RequestParam(name="logout",required=false) String logout){
	  if(error!=null)
		  model.addAttribute("error","Invalid Username and Password..");
	  if(logout!=null)
		  model.addAttribute("logout","logged out sucessfully");
	  return "login";
  }
  
}
