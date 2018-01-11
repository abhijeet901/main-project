package com.niit.dao;

import java.util.List;


import com.niit.model.user;

public interface Userdao {
	public void adduser(user user);//Create
	public List<user> getUserlist();//Read
	 public void deleteuser(String id);//Delete
	 public user getuser(String id);//update
	 public void edituser(user user);//update
}
