package com.myapp.pilotmanagement.entities;
 
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Pilot {
	@Id
	@GeneratedValue
	private int pid;
	
	private String pname;
	private String pdep;
}
