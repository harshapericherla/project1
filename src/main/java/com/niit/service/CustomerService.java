package com.niit.service;

import com.niit.model.Customer;

public interface CustomerService {
	 void saveCustomer(Customer customer);
	 Customer getCustomerByUsername(String username);
}
