package com.management.employeemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.management.employeemanagement.models.Employee;
import com.management.employeemanagement.repository.EmployeeRepository;


@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired 
	private EmployeeRepository repo;
	
	@Override
	public Employee insertEmployee(Employee s) {
      
		Employee st=repo.save(s);
	
		
		return st;
	}

	public Employee getEmployee(int sId) {
          Employee s=repo.getById(sId);
		return s;
	}

	public List<Employee> getAllEmployees() {
		
		return repo.findAll();
	}

	public void deleteEmployee(Integer id) {
		repo.deleteById(id);
		
	}

}
