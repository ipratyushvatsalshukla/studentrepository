package com.exp.service;

import java.util.List;
import com.exp.bean.Teacher;

public interface TeacherService {
	public int insertTeacher(Teacher tea);
	public  Teacher getTeacher(int id);
	public List<Teacher> getAllTeacher();
	public void deleteTeacher(Integer id);
	public  int modifyTeacher(int id,String name,String subj);
}
