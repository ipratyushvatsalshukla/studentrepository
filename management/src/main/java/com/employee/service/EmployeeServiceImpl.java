package com.employee.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.entities.Employee;
import com.employee.repository.EmployeeRepo;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	EmployeeRepo rep;

	@Override
	public List<Employee> getAllEmployee() {
		
		List<Employee> list=rep.findAll();
		return list;
		
	}
	
	@Override
	public int update(Employee e) {
		rep.save(e);
		return e.getEid();
	}

	@Override
	public void deleteEmployee(Integer id) {
		
		 rep.deleteById(id);
	}

	@Override
	public int insertEmployee(Employee emp) {
		
		int i=0;
		Employee e=rep.save(emp);
		if(e!=null) {
			i=e.getEid();
		}
		return i;
	}

	@Override
	public Employee getEmployee(int id) {
		
		Employee e=rep.getById(id);
		return e;
	
	}
	@Override
	public Employee updateEmployee(int id) {
		Optional<Employee> e= rep.findById(id);
		return e.get();
	}
}