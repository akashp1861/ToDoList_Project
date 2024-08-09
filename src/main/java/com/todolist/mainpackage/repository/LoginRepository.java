package com.todolist.mainpackage.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.todolist.mainpackage.Entity.Login;


import java.util.List;


@Repository

public interface LoginRepository extends JpaRepository<Login, Long>{

	public Login findByEmailID(String email);
	public Login findByid (Long id);
	

	
	
}
