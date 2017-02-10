package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.Categorydao;
import com.niit.model.Category;
@Service
public class Categoryserviceimpl implements Categoryservice{
	@Autowired
   private Categorydao categorydao;
	@Transactional
	public List<Category> getcategories() {
		return categorydao.getcategories();
	}

}
