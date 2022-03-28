package com.maybank.todo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maybank.todo.service.TodoService;

@Controller
@RequestMapping("/todo")
public class TodoController {
	@Autowired
	TodoService todoService;

	@GetMapping("/list-all")
	public String listAll(Model model) {
		model.addAttribute("todos", todoService.listAll());
		return "todo/listAll";
	}
}
