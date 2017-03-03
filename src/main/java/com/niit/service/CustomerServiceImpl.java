package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerDao;
import com.niit.model.Customer;
@Service
public class CustomerServiceImpl implements CustomerService{
    @Autowired
	private CustomerDao customerDao;
	@Override
	public void saveCustomer(Customer customer) {
	    customerDao.saveCustomer(customer);
		
	}
   public Customer getCustomerByUsername(String username){
		 return customerDao.getCustomerByUsername(username);
	 }
}
