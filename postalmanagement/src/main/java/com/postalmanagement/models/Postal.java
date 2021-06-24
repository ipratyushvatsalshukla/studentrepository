package com.postalmanagement.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Postal {
	
	
	@Id
	@GeneratedValue
	private int pid;
	
	private String pname;
	
	private String pdept;
	private String password;

}