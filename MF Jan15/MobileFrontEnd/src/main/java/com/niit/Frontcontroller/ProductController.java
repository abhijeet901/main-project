package com.niit.Frontcontroller;

import java.io.File;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.niit.dao.Categorydao;
import com.niit.dao.Productdao;
import com.niit.dao.Supplierdao;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class ProductController {
	@Autowired
	Productdao productdao;
	@Autowired
	Categorydao categorydao;
	@Autowired
	Supplierdao supplierdao;
	@RequestMapping(value="product")
	public String getProductpage( Product product, Model model)
	{
		
		model.addAttribute("prolist",this.productdao.getProductList());
	    model.addAttribute("catlist",this.categorydao.getCategoryList());
		List<Supplier> suplist=supplierdao.getSupplierList();
			
		model.addAttribute("suplist",suplist);
		return"ProductPage";

	}
	@RequestMapping(value="saveProduct",method=RequestMethod.POST)
	public String addProductpage( @ModelAttribute("product")Product product ,Model model)
	{
		productdao.addproduct(product);
		model.addAttribute("product",new Product());
		model.addAttribute("prolist",this.productdao.getProductList());
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		model.addAttribute("suplist", this.supplierdao.getSupplierList());
		
		return"ProductPage";		
	}
	@RequestMapping("/deletepro")
	public String deleteProduct(@RequestParam("pid")int id,Model model)
	{
		productdao.deleteproduct(id);
		model.addAttribute("product",new Product());
	    model.addAttribute("prolist",this.productdao.getProductList());
	    model.addAttribute("catlist",this.categorydao.getCategoryList());
	    model.addAttribute("suplist", this.supplierdao.getSupplierList());
		return "ProductPage";
		}
	@RequestMapping(value = "/Userproduct")
	public String displayProduct(Model m)
	{
		List<Product> prolist = productdao.getProductList();
		m.addAttribute("prolist", prolist);
		List<Category> catlist=categorydao.getCategoryList();
		m.addAttribute("catlist", catlist);
		
		return "userproduct";
	} 
	@RequestMapping(value = "/productdesc/{id}")
	public String showProductDesc(@PathVariable("id") int id,Model m)
	{
		Product product=productdao.getProduct(id);
		m.addAttribute("product" ,product);
		return "product description";
	}
	@RequestMapping("/product/searchbycategory")
	public String selectByCategory(@RequestParam String searchCondition,Model model){
		model.addAttribute("product",productdao.getProductList());
		if(searchCondition.equals("All"))
			model.addAttribute("searchCondition","");
		else
		model.addAttribute("searchcondition",searchCondition);
		return "userproduct";
	}
	
	@RequestMapping("/editpro")
	public String getProductpage(@RequestParam("pid")int id,Model model)
	{
		Product product=productdao.getProduct(id);
		model.addAttribute("productdata", product);
		model.addAttribute("product1",new Product());
		return"editproduct";
	}
	@RequestMapping(value="editproduct",method=RequestMethod.POST)
	public String updateProduct(Product product,Model model)
	{
		productdao.editProduct(product);
		model.addAttribute("prolist",this.productdao.getProductList());
		return "ProductPage";
	}
	
	
	
	
}
