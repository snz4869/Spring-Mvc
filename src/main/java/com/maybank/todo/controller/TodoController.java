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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.maybank.todo.dto.SearchFormData;
import com.maybank.todo.entity.Todo;
import com.maybank.todo.service.TodoService;

import lombok.extern.java.Log;

@Controller
@Log
@RequestMapping("")
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
		model.addAttribute("searchForm", new SearchFormData());
		model.addAttribute("todos", todoService.listAll());
		return "/todo/listAll";
	}

	@RequestMapping("input")
	public String input(Model model) {
		log.info("book input hit!");
		model.addAttribute("todo", new Todo());
		return "/todo/addTodo";
	}

	@RequestMapping("/save")
	public String save(@ModelAttribute Todo todo) {
		System.out.println(todo);
		todoService.saveTodo(todo);
		return "redirect:";
	}

	@RequestMapping("edit/{id}")
	public String edit(Model model, @PathVariable int id) {
		log.info("todo edit hit!");
		Todo todo = todoService.getTodoById(id).get();
		model.addAttribute("todo", todo);
		return "/todo/editTodo";
	}

	@RequestMapping("/update")
	public String update(@ModelAttribute Todo todo) {
		log.info("book update hit!");
		todoService.updateTodo(todo);
		return "redirect:";
	}
	
	@RequestMapping("delete")
    public String deleteTodo(@RequestParam int id) {
        todoService.deleteTodo(id);
        return "redirect:";
    }
	
	@RequestMapping("search")
	public String search(SearchFormData searchFormData, Model model) {
		try {
			model.addAttribute("searchForm", searchFormData);		
			model.addAttribute("todos", todoService.findByUser(searchFormData.getKeyword()));
			System.out.println(searchFormData);
			return "/todo/listAll";
		} catch (Exception e) {
			// TODO: handle exception
			return e.toString();
		}		
	}

}
