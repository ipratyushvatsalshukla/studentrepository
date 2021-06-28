package com.exp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exp.service.TeacherServiceImpl;
import com.exp.bean.Login;
import com.exp.bean.Teacher;

@Controller
@RequestMapping("teacher")
public class RegController {
	
	@Autowired
	private TeacherServiceImpl service;
	@GetMapping("reg")
	public String register(Model m)
	{
		m.addAttribute("teacher",new Teacher());
		m.addAttribute("msg","this is registration page");
		return "Reg";
	}
	@GetMapping("save")
	public String registerTeacher(@ModelAttribute Teacher tea,Model m)
	{
		System.out.println("teacher id:"+tea.getId());
		System.out.println("teacher name:"+tea.getName());
		System.out.println("subject:"+tea.getSubject());
int i=service.insertTeacher(tea);
		
		if(i!=0) {
		m.addAttribute("teacher",new Teacher());
		m.addAttribute("msg","Registration success. Registration id is: "+i);
		}
		return "Reg";
		
		
	}
	
	@GetMapping("loginpage")
	public String loginpage(Model m) {
		
		m.addAttribute("loginob",new Login());
		//m.addAttribute("msg","this is registration page");
		
		return "login";
		
	}
	
	
	@PostMapping("validatelogin")
	public String loginValidation(@ModelAttribute Login login,Model m ) {
		int i=0;
		
		Teacher t=service.getTeacher(login.getId());
		
		
		
		if(login.getId()==t.getId() && login.getName().equalsIgnoreCase(t.getName()))	
			i=1;
			
		if(i!=0) {
		m.addAttribute("name", login.getName());
		
		}
		return "welcome";
		
		
	}
	@GetMapping("alldoctors")
	public String getAllTeachers(Model m ) {
		
		
		List<Teacher> t=service.getAllTeacher();
		
		m.addAttribute("list", t);
		System.out.println(t);
	return "welcome";
	

}
	@GetMapping("delete")
	public String deleteTeacher(@RequestParam Integer id,Model m) {
		
		
		service.deleteTeacher(id);
		
		
		List<Teacher> t=service.getAllTeacher();
		
		m.addAttribute("list", t);
		System.out.println("deleted teacher id is   ------------>"+id);
	return "welcome";

}
	@GetMapping("modify")
	public String showUpdatePage(@ModelAttribute Teacher teacher,@RequestParam Integer id,Model model) {
		model.addAttribute("msg", "Update Page for Id "+id);
		model.addAttribute("id", id);
		return "update";
	}
	
	@PostMapping("modify")
	public String modifyDoctor(@RequestParam Integer id,@ModelAttribute Teacher teacher,Model model) {
		int i=service.modifyTeacher(id,teacher.getName(),teacher.getSubject());
				
		if(i!=0) {

			model.addAttribute("msg", "update successful");
		}
		System.out.println(i);
		return "redirect:allteachers";
	}
}
