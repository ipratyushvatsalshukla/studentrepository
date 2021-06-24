package com.food.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.food.entities.Customer;
import com.food.entities.Login;
import com.food.service.CustomerService;

@Controller
@RequestMapping("food")
public class RegisterController {
	
	@Autowired
	private CustomerService service;
	
	@GetMapping("reg")
	public String register(Model m) {
		m.addAttribute("customer",new Customer());
		m.addAttribute("msg","Fill Above Details to get Registered");
		return "register";
	}
	
	@GetMapping("save")
	public String registerCustomer(@ModelAttribute Customer cust,Model m) {
		int i = service.insertCustomer(cust);
		
		if(i!=0) {
			m.addAttribute("customer",new Customer());
			m.addAttribute("msg","Registered Successfully. Your id is: "+i);
		}
		return "register";		
	}
	
	@GetMapping("login")
	public String loginpage(Model m) {
		m.addAttribute("newlogin",new Login());
		return "login";
	}
	
	
	@PostMapping("validatelogin")
	public String loginValidation(@ModelAttribute Login login,Model m) {
		int i=0;
		String status = null;
		 Customer c =service.getCustomer(login.getId());

		 if(login.getId()==c.getId() && login.getPassword().equalsIgnoreCase(c.getPassword()) && login.getAccType().equals(c.getAccType())) {
			 
			 if(login.getAccType().equals("Admin")) {
				 i=1;
				 m.addAttribute("name", c.getName());
				 m.addAttribute("id",c.getId());
				 status = "admin";
			 }
			 else if(login.getAccType().equals("Customer")) {
				 i=1;
				 m.addAttribute("name", c.getName());
				 m.addAttribute("id",c.getId());
				 
				 status = "customer";
			 } 
			 else {
				 status="failure";
			 }
		 }else {
			 status="failure";
		 }
		 
		 return status;
	}
	
	
	//Admin controller
	@GetMapping("allcustomers")
	public String getAllCustomers(@RequestParam String name,Model m) {
		List<Customer> c = service.getAllCustomer();
		
		m.addAttribute("name",name);
		m.addAttribute("list",c);
		System.out.println(c);
		return "admin";
	}
	
	@GetMapping("delete")
	public String deleteCustomer(@RequestParam Integer id,Model m) {
		service.deleteCustomer(id);
		List<Customer> c=service.getAllCustomer();
		
		m.addAttribute("list",c);
		System.out.println("Deleted customer id is : "+id);
		return "admin";
	}
	
	@GetMapping("modifycustomer")
	public String showUpdateCustomer(@RequestParam int id,Model m) {
		Customer  c = service.updateCustomer(id);
		m.addAttribute("newcus", c);
		System.out.println("in modify "+c);
		return "modifycustomer";
	}
	
	@PostMapping("updatecustomer")
	public String updateCustomer(@ModelAttribute Customer newcus,Model m) {
		int i = service.update(newcus);
		List<Customer> c=service.getAllCustomer();
		m.addAttribute("list",c);
		return "admin";
	}
	
	
	//customer controller
	@GetMapping("details")
	public String customerPage(@RequestParam int id,Model m) {
		Customer c = service.getCustomer(id);
		m.addAttribute("cust",c);
		return "customer";
	}
	
	@GetMapping("modifydetails")
	public String showUpdateDetails(@RequestParam int id,Model m) {
		Customer  c = service.updateCustomer(id);
		m.addAttribute("newcus", c);
		System.out.println("in modify "+c);
		return "modifydetails";
	}
	
	@PostMapping("updatedetails")
	public String updateDetails(@RequestParam int id,@ModelAttribute Customer newcus,Model m) {
		int i = service.update(newcus);
		Customer c = service.getCustomer(id);
		m.addAttribute("cust",c);
		return "customer";
	}
}
