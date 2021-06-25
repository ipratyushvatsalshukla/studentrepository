package com.librarymanagementsystem.service;

import java.util.List;

import com.librarymanagementsystem.entities.Student;

public interface StudentService {
	public int insertStudent(Student eid);
	public  Student getStudent(int id);
	public List<Student> getAllStudent();
	public void deleteStudent(Integer id);
	public  int modifyStudent(int id,String name,String dept);
}