package com.niit.Frontcontroller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
		
		String path="C:\\Users\\USER\\workspacenew\\MobileFrontEnd\\src\\main\\webapp\\WEB-INF\\images\\";
		path=path+String.valueOf(product.getId())+".jpg";
		File f=new File(path);
	
		MultipartFile filedet=product.getPimage();
		
		if(!filedet.isEmpty())
		{
			try
			{
			  byte[] bytes=filedet.getBytes();
			  System.out.println(bytes.length);
			  FileOutputStream fos=new FileOutputStream(f);
              			BufferedOutputStream bs=new BufferedOutputStream(fos);
              			bs.write(bytes);
              			bs.close();
 	             			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else
		{
			System.out.println("File is Empty not Uploaded");
			
		}
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
	@RequestMapping(value="userproduct")
	public String showAllProduct(Product product,Model model)
	{
		
		model.addAttribute("prolist",this.productdao.getProductList());
		return "allproductdisplay";
	}
	@RequestMapping("/orderpro")
	public String getProductsapage(@RequestParam("pid")int id,Model model)
	{
		Product product=productdao.getProduct(id);
		model.addAttribute("pro", product);
		
		return"showproduct";
	}}
	
	
	
	
