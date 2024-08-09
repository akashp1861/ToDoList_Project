package com.todolist.mainpackage.service;

import java.util.List;
import java.util.Optional;

import com.todolist.mainpackage.Entity.Login;
import com.todolist.mainpackage.EntityTask.ToDo;


public interface service {

	  public Login findById(Long id);
	  public  Login update(Login user);
	  public boolean validateLogin( String email, String password);
	  public  void saveLogin(Login login);
	 
	        
	        
	
	

}