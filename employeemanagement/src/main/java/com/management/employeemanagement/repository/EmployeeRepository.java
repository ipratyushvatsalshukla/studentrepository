package com.management.employeemanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.management.employeemanagement.models.Employee;

public interface EmployeeRepository extends JpaRepository<Employee,Integer>{

}
