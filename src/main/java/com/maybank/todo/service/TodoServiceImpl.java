package com.maybank.todo.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

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
	
	@Override
    public Optional < Todo > getTodoById(int id) {
        return repo.findById(id);
    }

	@Override
	public void updateTodo(Todo todo) {
		// TODO Auto-generated method stub
		repo.save(todo);
	}

	@Override
	public void addTodo(int id, String user, String description, Date targetDate, int startMeter) {
		// TODO Auto-generated method stub			
		repo.save(new Todo(id,user,description,targetDate,startMeter));
	}

	@Override
	public void deleteTodo(int id) {
		// TODO Auto-generated method stub
		Optional < Todo > todo = repo.findById(id);
        if (todo.isPresent()) {
            repo.delete(todo.get());
        }
	}

	@Override
	public void saveTodo(Todo todo) {
		// TODO Auto-generated method stub
		repo.save(todo);
	}

	@Override
	public long getNextId() {
		// TODO Auto-generated method stub
		return 0;
	}

}
