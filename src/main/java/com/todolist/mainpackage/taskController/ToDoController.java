package com.todolist.mainpackage.taskController;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.todolist.mainpackage.Entity.Login;
import com.todolist.mainpackage.EntityTask.ToDo;
import com.todolist.mainpackage.TodoService.ToDoService;
import com.todolist.mainpackage.repository.LoginRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ToDoController {

	@Autowired
	private ToDoService service;
	
	@Autowired
	private LoginRepository loginRepository;

	@GetMapping("/viewToDoList")
    public String viewAllToDoItems(Model model, HttpSession session) {
        Login loggedInUser = (Login) session.getAttribute("loggedInUser");
        
        if (loggedInUser == null) {
            // Redirect to login if user is not logged in
            return "redirect:/login";
        }

        List<ToDo> todoList = service.getAllToDoItemsByUserId(loggedInUser.getId());
        model.addAttribute("list", todoList);
        model.addAttribute("login", loggedInUser);
        return "ViewTask";
    }
	
	
	
    @GetMapping("/updateToDoStatus/{id}")
	public String updateToDoStatus(@PathVariable Long id) {
		if (service.updateStatus(id)) {
			return "redirect:/viewToDoList";
		}
		
		return "redirect:/viewToDoList";
	}
     
    
    
    @GetMapping("/addToDoItem")
	public String addToDoItem(Model model) {
    	model.addAttribute("todo", new ToDo());        
		return "AddTask";
	}
    
    @PostMapping("/saveToDoItem")
    public String saveToDoItem(ToDo todo, HttpSession session) {
        // Retrieve the logged-in user from the session
        Login loggedInUser = (Login) session.getAttribute("loggedInUser");
        // Set the Login object directly to the ToDo object
        todo.setLogin(loggedInUser);
        if (service.saveOrUpdateToDoItem(todo)) {
            return "redirect:/viewToDoList";
        }
        return "redirect:/addToDoItem";
    }
	
    
    @GetMapping("/updateTodo/{id}")
    public String updateTodo(@PathVariable Long id, Model model) {
    	
    	model.addAttribute("todo", service.getToDoItemById(id));
    	return "editTodoTask";
    
    }
    
    @PostMapping("/updateTodoTask")
    public String updateTodoTask(@ModelAttribute ToDo todo, HttpSession session) {
        Login loggedInUser = (Login) session.getAttribute("loggedInUser");
        todo.setLogin(loggedInUser);
        
        if (service.saveOrUpdateToDoItem(todo)) {
            return "redirect:/viewToDoList";
        }
        return "redirect:/viewToDoList?error";
    }
    
    
    
    @GetMapping("/deleteTodo/{id}")
    public String deleteById (@PathVariable Long id) {
    	
    	if (service.deleteById(id)) {
    		return "redirect:/viewToDoList";
		}
		return  "redirect:/viewToDoList"; 	
    }
	
   
    
	
	










	}

