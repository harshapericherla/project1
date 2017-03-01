package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Authorities;
import com.niit.model.Cart;
import com.niit.model.Customer;
@Repository
public class CustomerDaoImpl implements CustomerDao {
    @Autowired
	private SessionFactory sessionFactory;
	@Override
	public void saveCustomer(Customer customer) {
		Session session = sessionFactory.openSession();
		customer.getUsers().setEnabled(true);
		
		//Authorities
		if(customer.getBillingAddress()!=null){
		String username = customer.getUsers().getUsername();
		String role = "ROLE_USER";
		Authorities authorities = new Authorities();
		//set the values
		authorities.setUsername(username);
		authorities.setRole(role);
		session.save(authorities);
		}
		//For Cart
		Cart cart = new Cart();
		customer.setCart(cart);
		cart.setCustomer(customer);
		
		session.save(customer);
		session.flush();
		session.close();
		
	}

}
