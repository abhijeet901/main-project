package com.niit.Frontcontroller;

import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.Cartdao;
import com.niit.dao.Productdao;
import com.niit.model.Cart;
import com.niit.model.Product;
@Controller
public class CartController 
{
	@Autowired
	Productdao productdao;
	@Autowired
	Cartdao cartdao;
	@RequestMapping("/{pid}")		
	public String addscart( @PathVariable("pid")int id,@RequestParam("quantity") int quantity,HttpSession session,Model model,Cart cart)
	{		
			
		String username=(String)session.getAttribute("username");
		Product product1=productdao.getProduct(id);
		cart.setUsername(username); 
		cart.setProquantity(quantity);
		Product product=productdao.getProduct(id);
	cart.setProid(product.getId());
	cart.setProname(product.getName());
	cart.setProprize(product.getPrize());
	cart.setCatid(product.getCatId());
	
	cart.setSupid(product.getSupId());
	cart.setOrdered(false);
	model.addAttribute("cart",new Cart());
	cartdao.addToCart(cart);
	model.addAttribute("prolist",this.productdao.getProductList());
	return "allproductdisplay";
	}
	@RequestMapping(value="cart", method=RequestMethod.GET)
	public String getsupplierlist(Model model,HttpSession session)
	{
		String username=(String)session.getAttribute("username");
	   
		model.addAttribute("cartlist",this.cartdao.getCartItems(username));
List<Cart> list=cartdao.getCartItems(username);
		
		int total=0;
		for(Cart cart:list)
		{
			total=total+(cart.getProquantity()*cart.getProprize());
		}
		model.addAttribute("total", total);

		return "cart";
	}}

	
		
		
	



	


	