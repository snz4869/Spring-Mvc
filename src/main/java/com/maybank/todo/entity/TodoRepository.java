package com.maybank.todo.entity;

import java.util.List;

import com.maybank.todo.entity.Todo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TodoRepository extends JpaRepository<Todo, Integer>{
//	List<Todo> findByUserName(String user);

}
