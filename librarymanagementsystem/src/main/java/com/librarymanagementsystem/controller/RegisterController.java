package com.librarymanagementsystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//import com.employeemanagement.entities.Employee;
import com.librarymanagementsystem.entities.Login;
//import org.springframework.web.bind.annotation.RequestMethod;
//import com.librarymanagementsystem.service.EmployeeServiceImpl;
import com.librarymanagementsystem.service.StudentServiceImpl;
import com.librarymanagementsystem.entities.Student;

@Controller
@RequestMapping("student")
public class RegisterController {

	@Autowired
	private StudentServiceImpl service;

	@GetMapping("reg")
	// @RequestMapping(value="reg", method=RequestMethod.GET)
	public String register(Model m) {

		m.addAttribute("student", new Student());
		return "Register";

	}

	@GetMapping("save")
	public String registerDoctor(@ModelAttribute Student emp, Model m) {

		System.out.println("Student id :" + emp.getStu_id());
		System.out.println("Student name: " + emp.getStu_name());
		System.out.println("Department " + emp.getDepartment());

		int i = service.insertStudent(emp);

		if (i != 0) {
			m.addAttribute("student", new Student());
			m.addAttribute("msg", "You successfully registred in library. Registration id is: " + i);
		}
		return "Register";

	}

	@GetMapping("loginpage")
	public String loginpage(Model m) {

		m.addAttribute("loginob", new Login());
		m.addAttribute("msg","Register Here");

		return "login";

	}

	@PostMapping("validatelogin")
	public String loginValidation(@ModelAttribute Login login, Model m) {
		int i = 0;

		Student d = service.getStudent(login.getStu_id());

		if (login.getStu_id() == d.getStu_id() && login.getStu_name().equalsIgnoreCase(d.getStu_name()))
			i = 1;

		if (i != 0) {
			m.addAttribute("name", login.getStu_name());

		}
		return "welcome";

	}

	@GetMapping("allstudents")
	public String getAllStudents(Model m) {

		List<Student> d = service.getAllStudent();
		m.addAttribute("list", d);
		System.out.println(d);
		return "welcome";

	}

	@GetMapping("delete")
	public String deleteStudent(@RequestParam Integer id, Model m) {

		service.deleteStudent(id);

		List<Student> d = service.getAllStudent();

		m.addAttribute("list", d);
		System.out.println("deleted student id is: " + id);
		return "welcome";

	}
	
	@GetMapping("modify")
	public String showUpdatePage(@ModelAttribute Student student,@RequestParam Integer id,Model model) {
		model.addAttribute("msg", "Update Page for Id "+id);
		model.addAttribute("id", id);
		return "update";
	}
	
	@PostMapping("modify")
	public String modifyDoctor(@RequestParam Integer id,@ModelAttribute Student student,Model model) {
		int i=service.modifyStudent(id,student.getStu_name(),student.getDepartment());
				
		if(i!=0) {
//			model.addAttribute("name", student.getName());
			model.addAttribute("msg", "update successful");
		}
		System.out.println(i);
		return "redirect:allstudents";
	}

}
