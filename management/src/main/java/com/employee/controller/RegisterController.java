package com.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.employee.entities.Employee;
import com.employee.entities.Login;
import com.employee.service.EmployeeServiceImpl;

@Controller
@RequestMapping("employee")
public class RegisterController {

	@Autowired
	private EmployeeServiceImpl service;

	@GetMapping("reg")
	public String register(Model m) {
		System.out.println("hii all");
		m.addAttribute("employee", new Employee());
		m.addAttribute("msg", "Welcome To Registration Page");

		return "Register";
	}

	@GetMapping("save")
	public String registerEmployee(@ModelAttribute Employee emp, Model m) {

		System.out.println("Employee id :" + emp.getEid());
		System.out.println("Employee name: " + emp.getEname());
		System.out.println("Department " + emp.getEdep());

		int i = service.insertEmployee(emp);

		if (i != 0) {
			m.addAttribute("employee", new Employee());
			m.addAttribute("msg", "Registration success. Registration id is: " + i);
		}
		return "Register";
	}

	@GetMapping("loginpage")
	public String loginpage(Model m) {

		m.addAttribute("loginob", new Login());
		// m.addAttribute("msg","this is registration page");

		return "login";
	}

	@PostMapping("validatelogin")
	public String loginValidation(@ModelAttribute Login login, Model m) {
		int i = 0;

		Employee e = service.getEmployee(login.getEid());

		if (login.getEid() == e.getEid() && login.getEname().equalsIgnoreCase(e.getEname()))
			i = 1;

		if (i != 0) {
			m.addAttribute("name", login.getEname());

		}
		return "welcome";
	}

	@GetMapping("allemployees")
	public String getAllEmployee(Model m) {

		List<Employee> e = service.getAllEmployee();

		m.addAttribute("list", e);
		System.out.println(e);
		return "welcome";
	}

	@GetMapping("delete")
	public String deleteEmployee(@RequestParam Integer id, Model m) {

		service.deleteEmployee(id);

		List<Employee> d = service.getAllEmployee();

		m.addAttribute("list", d);
		System.out.println("deleted employee id is   ------------>" + id);
		return "welcome";
	}

	@GetMapping("modify")
	public String showUpdateEmployee(@RequestParam int id, Model m) {
		Employee e = service.updateEmployee(id);
		m.addAttribute("newemp", e);
		System.out.println("in modify " + e);
		return "update";
	}
	@PostMapping("updateemployee")
	public String updateCustomer(@ModelAttribute Employee newemp,Model m) {
		int i = service.update(newemp);
		List<Employee> e=service.getAllEmployee();
		m.addAttribute("list",e);
		return "welcome";
	}

}