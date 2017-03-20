package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.model.Count;
import com.niit.service.CountService;

@Controller
public class CountController {
	@Autowired
  private CountService countService;
	
	@RequestMapping("/getcount")
	public @ResponseBody List<Count> getCount(){
		 List<Count> count = countService.getAllCounts();
		  return count;
	}
}
