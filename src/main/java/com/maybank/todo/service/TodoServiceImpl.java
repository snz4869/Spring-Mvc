package com.maybank.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maybank.todo.entity.Todo;
import com.maybank.todo.entity.TodoRepository;

@Service
public class TodoServiceImpl implements TodoService {

	@Autowired
	TodoRepository repo;
	
	@Override
	public List<Todo> listAll() {
		// TODO Auto-generated method stub
		
		return repo.findAll();
	}

}
