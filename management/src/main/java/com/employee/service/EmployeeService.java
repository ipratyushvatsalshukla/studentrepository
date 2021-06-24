package com.employee.service;

import java.util.List;

import com.employee.entities.Employee;


public interface EmployeeService {

	public int insertEmployee(Employee doct);
	public  Employee getEmployee(int id);
	public List<Employee> getAllEmployee();
	public void deleteEmployee(Integer id);
	public Employee updateEmployee(int id);
	int update(Employee e);
	

}