package com.niit.model;

import javax.persistence.OneToOne;

public class CountTotal {

	
	private int id;
	
	private int totalCount;
	
	@OneToOne
	private Customer customer;
}
