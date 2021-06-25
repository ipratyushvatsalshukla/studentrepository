package com.management.employeemanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.management.employeemanagement.models.Login;
import com.management.employeemanagement.service.EmployeeServiceImpl;
import com.management.employeemanagement.models.Employee;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeServiceImpl service;

	@GetMapping("login")
	public String loginpage(Model m) {

		m.addAttribute("loginob", new Login());

		return "login";

	}

	@GetMapping("home")
	public String homePage() {
		return "home";
	}

	@GetMapping("register")
	public String register(Model m) {

		m.addAttribute("employee", new Employee());
		return "register";

	}

	@GetMapping("save")
	public String register(@ModelAttribute Employee s, Model m) {
		
		Employee st = service.insertEmployee(s);
		if (st != null) {
			m.addAttribute("name", st.getSname());
			return "welcome";
		}
		return "register";
	}

	@PostMapping("validatelogin")
	public String loginValidation(@ModelAttribute Login login, Model m) {
		
		int i = 0;
		Employee s = service.getEmployee(login.getSid());
		if (s == null) {
			return "login";
		}
		if (login.getSid() == s.getSid() && login.getPassword().equals(s.getPassword())) {
			i = 1;
		}
		if (i != 0) {
			m.addAttribute("name", s.getSname());

		}

		return "welcome";
	}

	@GetMapping("allemployees")
	public String getEmployee(Model m) {
		
		List<Employee> s = service.getAllEmployees();
		m.addAttribute("list", s);
		return "welcome";

	}

	@GetMapping("delete")
	public String deleteEmployee(@RequestParam Integer id, Model m) {
		
		service.deleteEmployee(id);
		List<Employee> s = service.getAllEmployees();
		m.addAttribute("list", s);
		return "welcome";

	}

	@GetMapping("modify")
	public String modifyEmployee(@RequestParam Integer id, Model m) {

		System.out.println(id);
		m.addAttribute("id", id);
		m.addAttribute("employee", new Employee());
		return "edit";

	}

	@GetMapping("update")
	public String updateEmployee(@ModelAttribute Employee s, Model m) {
		
		service.insertEmployee(s);
		m.addAttribute("name", s.getSname());
		return "welcome";
	}

}
