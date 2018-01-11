package com.niit.dao;

import java.util.List;

import com.niit.model.Category;




public interface Categorydao {
	public void addCategory(Category category);
	public List<Category> getCategoryList();
	public void deletecategory(String id);
	public Category getCategory(String id);
	public void editCategory(Category category);
}
