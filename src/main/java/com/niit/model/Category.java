package com.niit.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="category")
public class Category implements Serializable{
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@OneToMany(mappedBy="category")
@JsonIgnore
private List<Product> product;


private String categorydetails;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCategorydetails() {
	return categorydetails;
}
public void setCategorydetails(String categorydetails) {
	this.categorydetails = categorydetails;
}
public List<Product> getProduct() {
	return product;
}
public void setProduct(List<Product> product) {
	this.product = product;
}
public String toString(){
	return this.categorydetails;
}
}
