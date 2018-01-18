package com.niit.Frontcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.Userdao;
import com.niit.model.user;

@Controller
public class UserController {


	@Autowired
	Userdao userdao;

	@RequestMapping(value="register", method=RequestMethod.GET)
	public ModelAndView sendregister(@ModelAttribute("user")user user)
	{
		ModelAndView mv=new ModelAndView("register");
		return mv;
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public ModelAndView getUser(user user)
	{
		userdao.adduser(user);
		ModelAndView mv=new ModelAndView("login","user",new user());
		return mv;		
		
	}
	
	@SuppressWarnings("unused")
	
	@RequestMapping(value="userlist", method=RequestMethod.GET)
	public String getuserlist(Model model)
	{
	   List<user> ul =userdao.getUserlist();
		model.addAttribute("userlist",this.userdao.getUserlist());
		return "userlist";
	}
	
	
	@RequestMapping("/delete")
	public String deleteUser(@RequestParam("uid") String username,Model model)
	{
		userdao.deleteuser(username);
		model.addAttribute("userlist",this.userdao.getUserlist());
		return"userlist";
	}
	//update
	@RequestMapping("/edit")
	public String getUser(@RequestParam("uid")String username,Model model)
	{
		user user=userdao.getuser(username);
		model.addAttribute("userdata", user);
		model.addAttribute("user1",new user());
		return"editpage";
	}
	@RequestMapping(value="updateuser",method=RequestMethod.POST)
	public String updateUser(user user,Model model)
	{
		userdao.edituser(user);
		model.addAttribute("userlist",this.userdao.getUserlist());
		return "userlist";
	}

}

