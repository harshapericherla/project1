package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Category;
@Repository
public class Catgeorydaoimpl implements Categorydao{
  @Autowired
  private SessionFactory sessionFactory;
  @Transactional
  public List<Category> getcategories(){
	  Session session = sessionFactory.openSession();
	  
	  List<Category> categories = session.createQuery("from Category").list();
	  session.close();
	  return categories;
  }
}
