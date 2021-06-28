package com.exp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.exp.bean.Teacher;

@Repository
public interface TeacherRepo extends JpaRepository<Teacher, Integer> {
	
	
	
}