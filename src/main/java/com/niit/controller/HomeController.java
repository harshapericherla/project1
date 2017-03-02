package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
  public String login(@RequestParam(value="error",required=false) String error,Model model,@RequestParam(name="logout",required=false) String logout){
	  if(error!=null)
		  model.addAttribute("error","Invalid Username and Password..");
	  if(logout!=null)
		  model.addAttribute("logout","logged out sucessfully");
	  return "login";
  }
  
}
