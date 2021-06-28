package com.exp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.exp.bean.Teacher;
import com.exp.repository.TeacherRepo;

@Service
public class TeacherServiceImpl implements TeacherService{

	@Autowired
	TeacherRepo repo;
	
	
	
	@Override
	public int insertTeacher(Teacher tea) {
		// TODO Auto-generated method stub
		int i=0;
		Teacher t=repo.save(tea);
		if(t!=null) {
			i=t.getId();
			//i=1;
		}
		
		
		
		
		return i;
	}



	@Override
	public Teacher getTeacher(int id) {

		Teacher t=repo.getById(id);
		
		
		return t;
	}

	

	public List<Teacher> getAllTeacher() {
		
		List<Teacher> list=repo.findAll();
		
		return list;
	}



	public void deleteTeacher(Integer id) {

	  repo.deleteById(id);
		
	
	}


	@Override
	public int modifyTeacher(int id, String name, String subj) {
		Teacher e=repo.getById(id);
		e.setName(name);
		e.setSubject(subj);		
		int i=insertTeacher(e);
		return i;
	}

}
