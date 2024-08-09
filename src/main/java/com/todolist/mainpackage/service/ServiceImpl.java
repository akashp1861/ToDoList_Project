package com.todolist.mainpackage.service;

import java.security.PublicKey;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import com.todolist.mainpackage.Entity.Login;
import com.todolist.mainpackage.EntityTask.ToDo;
import com.todolist.mainpackage.repository.LoginRepository;

@Service
public class ServiceImpl implements service {

		@Autowired
		private LoginRepository loginRepository;
	
		
	    @Override
	    public Login findById(Long id) {
	        Optional<Login> userOptional = loginRepository.findById(id);
	        return userOptional.orElse(null);
	    }	

	    @Override
	    public Login update(Login user) {
	        return loginRepository.save(user);
	    }

	    @Override
	    public boolean validateLogin(String email, String password) {
	        Login login = loginRepository.findByEmailID(email);
	        if (login != null && login.getPassword().equals(password)) {
	            return true; 
	            
	        } else {
	            return false; 
	        }
	    }

		@Override
		public void saveLogin(Login login) {
			loginRepository.save(login);
			
		}
		
		public Login findByEmail(String emailId) {
	        return loginRepository.findByEmailID(emailId);
	    }

		
}
