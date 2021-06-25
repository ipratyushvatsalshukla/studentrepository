package com.librarymanagementsystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.librarymanagementsystem.entities.Student;

import com.librarymanagementsystem.repository.StudentRepo;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentRepo repo;	
	
	@Override
	public int insertStudent(Student empl) {
		// TODO Auto-generated method stub
		int i=0;
		Student d=repo.save(empl);
		if(d!=null) {
			i=d.getStu_id();
		}
		return i;
	}

	@Override
	public Student getStudent(int id) {

		Student e=repo.getById(id);		
		return e;
	}	

	public List<Student> getAllStudent() {
		
		List<Student> list=repo.findAll();		
		return list;
	}

	public void deleteStudent(Integer id) {

	  repo.deleteById(id);
	}

	@Override
	public int modifyStudent(int id, String name, String dept) {
		Student e=repo.getById(id);
		e.setStu_name(name);
		e.setDepartment(dept);		
		int i=insertStudent(e);
		return i;
	}
}
