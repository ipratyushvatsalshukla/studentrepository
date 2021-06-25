package com.hotelmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotelmanagement.entities.Hotel;
import com.hotelmanagement.entities.Login;
import com.hotelmanagement.service.HotelServiceImpl;

@Controller
@RequestMapping("employee")
public class RegisterController {

	@Autowired
	private HotelServiceImpl service;

	@GetMapping("reg")
	
	public String register(Model m) {

		m.addAttribute("employee", new Hotel());
		return "Register";

	}

	@GetMapping("save")
	public String registerDoctor(@ModelAttribute Hotel emp, Model m) {

		System.out.println("Hotel id :" + emp.getEmp_id());
		System.out.println("Hotel name: " + emp.getEmp_name());
		System.out.println("Department " + emp.getDepartment());

		int i = service.insertEmployee(emp);

		if (i != 0) {
			m.addAttribute("employee", new Hotel());
			m.addAttribute("msg", "Registration success. Registration id is: " + i);
		}
		return "Register";

	}

	@GetMapping("loginpage")
	public String loginpage(Model m) {

		m.addAttribute("loginob", new Login());
		m.addAttribute("msg", "Register Here");

		return "login";

	}

	@PostMapping("validatelogin")
	public String loginValidation(@ModelAttribute Login login, Model m) {
		int i = 0;
		try {
			Hotel d = service.getEmployee(login.getEmp_id());
			if (login.getEmp_id() == d.getEmp_id() && login.getPassword().equalsIgnoreCase(d.getPassword()))
				i = 1;

			if (i != 0) {
				m.addAttribute("name", login.getPassword());
				return "welcome";
			}
			else {
				return "error";
			}
		} catch (Exception e) {
			return "error";
		}

	}

	@GetMapping("allemployees")
	public String getAllDoctors(Model m) {

		List<Hotel> d = service.getAllEmployee();
		m.addAttribute("list", d);
		System.out.println(d);
		return "welcome";

	}

	@GetMapping("delete")
	public String deleteDoctor(@RequestParam Integer id, Model m) {

		service.deleteEmployee(id);

		List<Hotel> d = service.getAllEmployee();

		m.addAttribute("list", d);
		System.out.println("deleted employee id is: " + id);
		return "welcome";

	}

	@GetMapping("modify")
	public String showUpdatePage(@ModelAttribute Hotel employee, @RequestParam Integer id, Model model) {
		model.addAttribute("msg", "Update Page for Id " + id);
		model.addAttribute("id", id);
		return "update";
	}

	@PostMapping("modify")
	public String modifyDoctor(@RequestParam Integer id, @ModelAttribute Hotel employee, Model model) {
		int i = service.modifyEmployee(id, employee.getEmp_name(), employee.getDepartment(), employee.getPassword());

		if (i != 0) {
//			model.addAttribute("name", student.getName());
			model.addAttribute("msg", "update successful");
		}
		System.out.println(i);
		return "redirect:allemployees";
	}

}
