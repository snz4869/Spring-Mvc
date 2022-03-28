package com.maybank.todo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.maybank.todo.entity.Todo;
import com.maybank.todo.service.TodoService;

import lombok.extern.java.Log;

@Controller
@Log
@RequestMapping("/todo")
public class TodoController {
	@Autowired
	TodoService todoService;
	
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        // Date - dd/MM/yyyy
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }

	@GetMapping("/")
	public String listAll(Model model) {
		model.addAttribute("todos", todoService.listAll());
		return "todo/listAll";
	}
	
	
	@RequestMapping("input")
	public String input(Model model) {
		log.info("book input hit!");
		model.addAttribute("todo", new Todo());
		return "todo/addTodo";
	}
	
	@RequestMapping("/save")
	public String save(@ModelAttribute Todo todo) {		
		todoService.saveTodo(todo);		
		return "redirect:";
	}
}
