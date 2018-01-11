package com.niit.Frontcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Category;


@Controller
public class Mobilefrontcontroller {

	@RequestMapping("/")
	public ModelAndView showMainPage()
	{
		 ModelAndView mv=new ModelAndView("mainpage");
		 
		return mv; 
	}
	@RequestMapping("/index")
	public ModelAndView showIndex()
	{
		 ModelAndView mv=new ModelAndView("index");
		 
		return mv; 
	}
	
	
	@RequestMapping("/bestdeals")
	public ModelAndView showBestDeals()
	{
		 ModelAndView mv=new ModelAndView("bestdeals");
		 
		return mv; 
	}
	
	@RequestMapping("/samsung")
	public ModelAndView showbrands1()
	{
		 ModelAndView mv=new ModelAndView("samsung");
		 
		return mv; 
	}
	
	@RequestMapping("/redmi")
	public ModelAndView showbrands2()
	{
		 ModelAndView mv=new ModelAndView("redmi");
		 
		return mv; 
	}
	
	@RequestMapping("/apple")
	public ModelAndView showbrands3()
	{
		 ModelAndView mv=new ModelAndView("apple");
		 
		return mv; 
	}
	@RequestMapping("/motorola")
	public ModelAndView showbrands4()
	{
		 ModelAndView mv=new ModelAndView("motorola");
		 
		return mv; 
	}
	
@RequestMapping("/about_us")
public ModelAndView showAboutUs()
{
	 ModelAndView mv=new ModelAndView("about_us");
	 
	return mv; 
}
@RequestMapping("/contact_us")
public ModelAndView showContactUs()
{
	 ModelAndView mv=new ModelAndView("contact_us");
	 
	return mv; 
}
@RequestMapping("/cart")
public ModelAndView showCart()
{
	 ModelAndView mv=new ModelAndView("cart");
	 
	return mv; 
}
@RequestMapping("/addtocart")
public ModelAndView showAddtoCart()
{
	 ModelAndView mv=new ModelAndView("addtocart");
	 
	return mv; 
}
@RequestMapping("/mainpage")
public ModelAndView showWelcome()
{
	 ModelAndView mv=new ModelAndView("mainpage");
	 
	return mv; 
}

/*@RequestMapping("/register")
public ModelAndView showRegister()
{
	 ModelAndView mv=new ModelAndView("register");
	 
	return mv; 
}*/



@RequestMapping("/register")
public ModelAndView showLogin()
{
	 ModelAndView mv=new ModelAndView("login");
	 
	return mv; 
}


@RequestMapping("/editpage")
public ModelAndView showEdit()
{
	 ModelAndView mv=new ModelAndView("editpage");
	 
	return mv; 
}
@RequestMapping("/admin")
public ModelAndView showAdmin()
{
	 ModelAndView mv=new ModelAndView("admin");
	 
	return mv; 

}
@RequestMapping("/adminlist")
public ModelAndView showAdminlist()
{
	 ModelAndView mv=new ModelAndView("adminlist");
	 
	return mv; 

}
/*@RequestMapping("/category")
public ModelAndView showCategory()
{
	 ModelAndView mv=new ModelAndView("category");
	 
	return mv; 

}*/



}

