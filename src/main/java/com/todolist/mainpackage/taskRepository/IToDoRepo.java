package com.todolist.mainpackage.taskRepository;

import java.util.List;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.todolist.mainpackage.Entity.Login;
import com.todolist.mainpackage.EntityTask.ToDo;


@Repository
public interface IToDoRepo extends JpaRepository<ToDo, Long>{

	public List<ToDo> findByLoginEmailID(String email);

	public Iterable<ToDo> findByLoginId(Long userId);
	
	
    
}