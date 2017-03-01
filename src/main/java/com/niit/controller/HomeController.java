package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Product;
import com.niit.service.Categoryservice;
import com.niit.service.Productservice;

@Controller
public class HomeController {
	@Autowired
	private Categoryservice categoryservice;
  public HomeController(){
	  System.out.println("I am running");
  }
  @RequestMapping("/home")
  public String home(HttpSession session){
	  session.setAttribute("categories", categoryservice.getcategories());
	  return "home";
  }
  @RequestMapping("/aboutus")
  public String aboutus(){
	  return "aboutus";
  }
  
  @RequestMapping("/login")
  public String login(){
	  return "login";
  }
  
}
