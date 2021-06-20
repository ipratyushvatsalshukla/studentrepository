package com.food.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Modify {
	
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private int age;
	private String contact;
	private String address;
	private String gender;
}
