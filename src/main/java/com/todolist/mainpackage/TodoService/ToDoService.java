package com.todolist.mainpackage.TodoService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todolist.mainpackage.Entity.Login;
import com.todolist.mainpackage.EntityTask.ToDo;
import com.todolist.mainpackage.taskRepository.IToDoRepo;

@Service
public class ToDoService {
	
	@Autowired
	IToDoRepo repo;

	public List<ToDo> getAllToDoItemsByUserId(Long userId) {
     List<ToDo> todoList = new ArrayList<>();
        
        // Retrieve ToDo items associated with the given user ID
        repo.findByLoginId(userId).forEach(todoList::add);
        return todoList;
    }
	
	public ToDo getToDoItemById(Long id) {
		return repo.findById(id).get();
	}
	

	public boolean updateStatus(Long id) {
		ToDo todo = getToDoItemById(id);
		todo.setStatus("Completed");
		
		return saveOrUpdateToDoItem(todo);
	}
	
	public boolean saveOrUpdateToDoItem(ToDo todo) {
		ToDo updatedObj = repo.save(todo);
		  if (getToDoItemById(updatedObj.getId()) != null) {
			return true;
		}
		
		return false;
	}
	
	
	
	
	
	public boolean deleteById(Long id) {
		if (repo.existsById(id)) {
		   repo.deleteById(id);
		   return true;
		}
		
		return false;	
	}
		
}