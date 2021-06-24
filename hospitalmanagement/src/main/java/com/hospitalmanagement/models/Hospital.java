package com.hospitalmanagement.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Hospital {
	
	
	@Id
	@GeneratedValue
	private int pid;
	
	private String pname;
	
	private String pdisease;
	private String password;

}