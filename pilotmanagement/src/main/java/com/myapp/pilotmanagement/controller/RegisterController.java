package com.myapp.pilotmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myapp.pilotmanagement.entities.Pilot;
import com.myapp.pilotmanagement.entities.Login;
import com.myapp.pilotmanagement.service.PilotServiceImpl;

@Controller
@RequestMapping("pilot")
public class RegisterController {

	@Autowired
	private PilotServiceImpl service;

	@GetMapping("reg")
	public String register(Model m) {
		System.out.println("hii all");
		m.addAttribute("pilot", new Pilot());
		m.addAttribute("msg", "Welcome To Registration Page");

		return "Register";
	}

	@GetMapping("save")
	public String registerPilot(@ModelAttribute Pilot emp, Model m) {

		System.out.println("Pilot id :" + emp.getPid());
		System.out.println("Pilot name: " + emp.getPname());
		System.out.println("Department " + emp.getPdep());

		int i = service.insertPilot(emp);

		if (i != 0) {
			m.addAttribute("pilot", new Pilot());
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

		Pilot e = service.getPilot(login.getPid());

		if (login.getPid() == e.getPid() && login.getPname().equalsIgnoreCase(e.getPname()))
			i = 1;

		if (i != 0) {
			m.addAttribute("name", login.getPname());

		}
		return "welcome";
	}

	@GetMapping("allpilots")
	public String getAllPilot(Model m) {

		List<Pilot> e = service.getAllPilot();

		m.addAttribute("list", e);
		System.out.println(e);
		return "welcome";
	}

	@GetMapping("delete")
	public String deletePilot(@RequestParam Integer id, Model m) {

		service.deletePilot(id);

		List<Pilot> d = service.getAllPilot();

		m.addAttribute("list", d);
		System.out.println("deleted pilot id is   ------------>" + id);
		return "welcome";
	}

	@GetMapping("modify")
	public String showUpdatePilot(@RequestParam int id, Model m) {
		Pilot e = service.updatePilot(id);
		m.addAttribute("newemp", e);
		System.out.println("in modify " + e);
		return "update";
	}
	@PostMapping("updatepilot")
	public String updateCustomer(@ModelAttribute Pilot newemp,Model m) {
		int i = service.update(newemp);
		List<Pilot> e=service.getAllPilot();
		m.addAttribute("list",e);
		return "welcome";
	}

}