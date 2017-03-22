package com.niit.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Count {
 
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private int id;
  
  private int count;
  
  @OneToOne
  @JoinColumn(name="product_id")
  @JsonIgnore
  private Product product;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public int getCount() {
	return count;
}

public void setCount(int count) {
	this.count = count;
}

public Product getProduct() {
	return product;
}

public void setProduct(Product product) {
	this.product = product;
}

  
}
