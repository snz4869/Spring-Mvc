package com.maybank.todo.service;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import com.maybank.todo.entity.Todo;

public interface TodoService {
	List<Todo> listAll();

	Optional<Todo> getTodoById(int id);

	void updateTodo(Todo todo);

	void addTodo(int id, String user, String description, Date targetDate, int startMeter);

	void deleteTodo(int id);

	void saveTodo(Todo todo);		
	
	Optional < Todo > get(int id);

	long getNextId();
}
