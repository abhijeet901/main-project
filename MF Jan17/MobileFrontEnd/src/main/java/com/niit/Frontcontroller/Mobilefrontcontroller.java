package com.niit.Frontcontroller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;




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




@RequestMapping("/register")
public ModelAndView showRegister()
{
	 ModelAndView mv=new ModelAndView("register");
	 
	return mv; 
}


@RequestMapping("/editpage")
public ModelAndView showEdit()
{
	 ModelAndView mv=new ModelAndView("editpage");
	 
	return mv; 
}
@RequestMapping("/admin")
public String showAdmin()
{
	return "admin";
	 
	 

}
@RequestMapping("/login")
public String showLogin()
{
	return "login";
	 
	 

}




}

