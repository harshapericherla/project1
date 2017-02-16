package com.niit.controller;


import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.niit.service.*;

import com.niit.model.Product;

@Controller
public class Productcontroller {
	@Autowired
	private Productservice productservice;	
	@Autowired
	private Categoryservice categoryservice;
	Logger logger = Logger.getLogger(Product.class);
	
   public Productcontroller(){
	   System.out.println("creating instance for productcontroller");
   }
   
   @RequestMapping("/admin/product/productform")
   public ModelAndView getForm(Model model) {
   model.addAttribute("product",new Product());
   return new ModelAndView("productform","categories",categoryservice.getcategories());
   }
   
  @RequestMapping("/admin/product/addproduct")
  public String saveproduct(@Valid @ModelAttribute(value="product") Product product,BindingResult result,Model model){
	  if(result.hasErrors()){
		  model.addAttribute("categories",categoryservice.getcategories());
		  return "productform";
	  }

	Product produp = productservice.saveproduct(product);
	MultipartFile prodImage = product.getImage();
	if(!prodImage.isEmpty()){
		Path paths = Paths.get("C:/Users/Harsha/workspace/projectone/src/main/webapp/WEB-INF/resources/images/" + product.getId()+".png");
	    try {
			prodImage.transferTo(new File(paths.toString()));
		} catch (IllegalStateException e) {
		    e.printStackTrace();
		} catch (IOException e) {
		    e.printStackTrace();
		}
	}
	
	  return "redirect:/all/product/getallproducts";
  }
  @RequestMapping("/all/product/getallproducts")
  public String getallproducts(Model model){
	  List<Product> products = productservice.getallproducts();
	  model.addAttribute("products",products);
	  return "productlist";   
	}
 @RequestMapping("/all/product/viewproduct/{id}") 
  public String viewproduct(@PathVariable int id,Model model){
	 Product product = productservice.getProductById(id);
	 model.addAttribute("product",product);
	  return "viewproduct";
  }
 @RequestMapping("/admin/product/deleteproduct/{id}")
  public String deleteProduct(@PathVariable int id){
	  productservice.deleteProduct(id);
	  return "redirect:/all/product/getallproducts";
  }
 
 @RequestMapping("/admin/product/editform/{id}")
 public String editProductform(@PathVariable int id,Model model){
	 Product product = productservice.getProductById(id);
	 System.out.println(product.getId());
	 model.addAttribute("product1",product);
	 model.addAttribute("categories",categoryservice.getcategories());
	 System.out.println("running editform");
	 return "editform";
 }
 
 @RequestMapping("/admin/product/editProduct")
 public String editProductDetails( @ModelAttribute("product1") Product product,BindingResult result){
		
		productservice.updateProduct(product);
		return "redirect:/all/product/getallproducts";
	}
@RequestMapping("/all/product/productsByCategory")
 public String getProductByCategory(@RequestParam(name="searchCondition")String searchCondition,Model model){
	List<Product> products = productservice.getallproducts();
	  model.addAttribute("products",products);
	  model.addAttribute("searchCondition",searchCondition);
	  return "productlist";
 }

}








