package com.niit.dao;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;



public interface Productdao {
	public void addproduct(Product product);
	public List<Product> getProductList();
	public void deleteproduct(int id);
	public Product getProduct(int id);
	public void editProduct(Product product);
	List<Category> getAllCategories();
	
}
