package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Product;
import com.niit.service.Productservice;

@Controller
public class HomeController {
	
  public HomeController(){
	  System.out.println("I am running");
  }
  @RequestMapping("/home")
  public String home(){
	  return "home";
  }
  @RequestMapping("/aboutus")
  public String aboutus(){
	  return "aboutus";
  }
 
}
