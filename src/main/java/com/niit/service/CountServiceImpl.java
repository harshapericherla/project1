package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CountDao;
import com.niit.model.Count;

@Service
public class CountServiceImpl implements CountService{

	@Autowired
	private CountDao countDao;
	@Override
	public List<Count> getAllCounts() {
		
		return countDao.getAllCounts();
	}

}
