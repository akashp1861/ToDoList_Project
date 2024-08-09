package com.todolist.mainpackage.Entity;
import java.util.ArrayList;
import java.util.List;

import com.todolist.mainpackage.EntityTask.ToDo;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Login {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String name;
	String emailID;
	String contact;
	String password;
	
	
	
	public Login(Long id, String name, String emailID, String contact, String password) {
		super();
		this.id = id;
		this.name = name;
		this.emailID = emailID;
		this.contact = contact;
		this.password = password;
		
	}

	  @OneToMany(mappedBy = "login", cascade = CascadeType.ALL)
	    private List<ToDo> todos = new ArrayList<>(); 

	

	public Login() {
		
    }


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmailID() {
		return emailID;
	}


	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}


	public String getContact() {
		return contact;
	}


	public void setContact(String contact) {
		this.contact = contact;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	


	@Override
	public String toString() {
		return "Login [id=" + id + ", name=" + name + ", emailID=" + emailID + ", contact=" + contact + ", password="
				+ password + "]";
	}
	
	
	
	
}
