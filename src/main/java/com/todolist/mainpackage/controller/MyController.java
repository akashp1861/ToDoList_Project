package com.todolist.mainpackage.controller;

import java.util.List;
import java.util.Optional;

import org.apache.commons.logging.Log;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.oracle.wls.shaded.org.apache.bcel.generic.RETURN;
import com.todolist.mainpackage.Entity.Login;
import com.todolist.mainpackage.EntityTask.ToDo;
import com.todolist.mainpackage.repository.LoginRepository;
import com.todolist.mainpackage.service.ServiceImpl;

import jakarta.persistence.Id;
import jakarta.servlet.http.HttpSession;

@Controller
public class MyController {

	@Autowired
	SessionFactory sF;
	
	@Autowired
	ServiceImpl serviceImpl;
	
	@Autowired
	LoginRepository loginRepository;
	
    	//open login page
		@RequestMapping("/login")
		public String login() {
			return"login";
		}
		
		
		//login varification 
		@PostMapping("/validlogin")
		public String validlogin(Login login, HttpSession httpSession, Model model) {
		    Login existLoginUser = loginRepository.findByEmailID(login.getEmailID());
		    if (existLoginUser != null && existLoginUser.getPassword().equals(login.getPassword())) {
		        // Store the entire Login object in the session
		        httpSession.setAttribute("loggedInUser", existLoginUser);
		        return "redirect:/homepage";
		    } else {
		        model.addAttribute("errorMessage", "Opps!! password is Invalid");
		        return "login";
		    }
		}
		
		//open create account/login page
		@RequestMapping("/register")
		public String register() {	
		return "register";
		}
		
		
		//create account/register and save in db
		@RequestMapping("/createaccountdata")
	    public String createaccountdata(@ModelAttribute("login") Login login, Model model) {
			serviceImpl.saveLogin(login);
	        return "succsess"; 
	    }
		
		//open succsess page after register  
		@RequestMapping("/Succsess")
		public String succsess() {	
		return "succsess";
		}
		
		//open homepage 
		@RequestMapping("/homepage")
		public String home( Model model, HttpSession session ) {
	     Login loggedInUser = (Login) session.getAttribute("loggedInUser");
		 model.addAttribute("login", loggedInUser);
		 return"home";
		}	
				
		//logout your account
		@GetMapping("/logout")
	    public String logout(HttpSession session) {
	         session.invalidate();
	         return "redirect:/login";
	    }
		
		//update OR edit profile
		@PostMapping("/updateProfile")
		public String updateProfile(@ModelAttribute("user") Login updatedUser, HttpSession session) {
		    // Get the logged-in user from the session
		    Login loggedInUser = (Login) session.getAttribute("loggedInUser");
		    
		    // Update the user's details
		    loggedInUser.setName(updatedUser.getName());
		    loggedInUser.setEmailID(updatedUser.getEmailID());
		    loggedInUser.setContact(updatedUser.getContact());
		    loggedInUser.setPassword(updatedUser.getPassword());
		  
		    // Save the updated user details to the database
		    loginRepository.save(loggedInUser);
		    
		    return "profile";
		}
		
		
        //retrive existing account details/fields
		@GetMapping("/Viewprofile")
		public String viewProfile(Model model, HttpSession session) {
			 Login loggedInUser = (Login) session.getAttribute("loggedInUser");
			  model.addAttribute("login", loggedInUser);
			return "profile";
			
		}
		
	 }
