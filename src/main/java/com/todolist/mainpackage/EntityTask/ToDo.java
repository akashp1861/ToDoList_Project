package com.todolist.mainpackage.EntityTask;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.todolist.mainpackage.Entity.Login;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table (name="todo")
public class ToDo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Nonnull
	private Long id;
	
	@Column
	@Nonnull
	private String title;
	
	@Column
	@Nonnull
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date date;
	
	@Column
	@Nonnull
	private String status;
	
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "login_id",  referencedColumnName = "id") // Foreign key column in the todo table
    private Login login; 
	
	
	public ToDo() {
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setLogin(Login loggedInUser) {
	this.login=loggedInUser;
		
	}

}
	
	
	

