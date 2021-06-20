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
import com.food.entities.Modify;
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
		return "Register";
	}
	
	@GetMapping("save")
	public String registerCustomer(@ModelAttribute Customer cust,Model m) {
		int i = service.insertCustomer(cust);
		
		if(i!=0) {
			m.addAttribute("customer",new Customer());
			m.addAttribute("msg","Registered Successfully. Customer id is: "+i);
		}
		return "Register";		
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
		 
		 if(login.getName().equalsIgnoreCase(c.getName()) && login.getPassword().equalsIgnoreCase(c.getPassword())) {
			 i=1;
			 status= "welcome";
		 }else {
			 status ="failure";
		 }
		 
		 if(i!=0) {
				m.addAttribute("name", c.getName());
		 }
		
		 return status;
	}
	
	@GetMapping("allcustomers")
	public String getAllCustomers(Model m) {
		List<Customer> c = service.getAllCustomer();
		
		
		m.addAttribute("list",c);
		System.out.println(c);
		return "welcome";
	}
	
	@GetMapping("delete")
	public String deleteCustomer(@RequestParam Integer id,Model m) {
		service.deleteCustomer(id);
		List<Customer> c=service.getAllCustomer();
		
		m.addAttribute("list",c);
		System.out.println("Deleted customer id is : "+id);
		return "welcome";
	}
	
	@GetMapping("modify/{id}")
	public String showUpdatePage(Model m) {
		m.addAttribute("newmodify",new Modify());
		return "modify";
	}
	
    @PostMapping("modify/{id}")
    public String updateContact(@RequestParam int id, @ModelAttribute Modify modify) {
    	Customer cus = service.getCustomer(id);
    	if(modify.getId()!=cus.getId()){
    		cus.setId(modify.getId());
    	}
    	
    	if(!modify.getName().equalsIgnoreCase(cus.getName())) {
    		cus.setName(modify.getName());
    	}
    	
    	if(modify.getAge()!=cus.getAge()) {
    		cus.setAge(modify.getAge());
    	}

    	if(!modify.getContact().equalsIgnoreCase(cus.getContact())) {
    		cus.setContact(modify.getContact());
    	}
    	
    	if(!modify.getAddress().equalsIgnoreCase(cus.getAddress())) {
    		cus.setAddress(modify.getAddress());
    	}

    	if(!modify.getGender().equalsIgnoreCase(cus.getGender())) {
    		cus.setGender(modify.getGender());
    	}
    	
    	service.updateCustomer(id, cus);
        return "redirect:/food/allcustomers";
    }

}
