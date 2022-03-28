package com.maybank.todo.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name = "todos")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Todo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(nullable = false)
	private String user;

	@Column(nullable = true)
	private String description;

	@Column(nullable = true)
	private Date targetDatae;

	private int startMeter;	
		
			
}
