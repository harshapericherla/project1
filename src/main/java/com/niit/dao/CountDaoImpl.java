package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Count;

@Repository
public class CountDaoImpl implements CountDao{
    
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Count> getAllCounts() {
	Session session = sessionFactory.openSession();
	List<Count> counts = session.createQuery("from Count").list();
	session.close();
		return counts;
	}

}
