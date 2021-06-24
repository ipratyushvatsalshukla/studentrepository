package com.postalmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.postalmanagement.models.Login;
import com.postalmanagement.models.Postal;
import com.postalmanagement.service.PostalServiceImpl;





@Controller
public class PostalController {
	
	@Autowired 
	private PostalServiceImpl service; 
	
	@GetMapping("login")
	public String loginpage(Model m) {
		
		m.addAttribute("loginob",new Login());
		
		return "login";
		
	}
	@GetMapping("/")
	public String homePage()
	{
		return "home";
	}
	@GetMapping("register")
	public String register(Model m) {
		
		m.addAttribute("postal",new Postal());
		return "register";
		
	}
	@GetMapping("save")
	public String register(@ModelAttribute Postal h,Model m ) {
		Postal ho=service.insertPostman(h);
		if(ho!=null) {
			m.addAttribute("name",ho.getPname());
			return "welcome";
		}
		return "register";
	}
	@PostMapping("validatelogin")
	public String loginValidation(@ModelAttribute Login login,Model m ) {
		int i=0;
		Postal h=service.getPostman(login.getPid());
		if(h==null)
		{
			return "login";
		}
		if(login.getPid()==h.getPid() && login.getPassword().equals(h.getPassword()))
		{
			i=1;
		}	
		if(i!=0) {
		m.addAttribute("name", h.getPname());
		
		}
		
		return "welcome";
	}
	@GetMapping("allpatients")
	public String getPatients(Model m ) {
		List<Postal> h=service.getAllPostmen();
		m.addAttribute("list", h);
	    
	     return "welcome";

        }
	@GetMapping("delete")
	public String deletePatient(@RequestParam Integer id,Model m) {
		service.deletePostman(id);
		List<Postal> h=service.getAllPostmen();
		m.addAttribute("list", h);
	return "welcome";
	
       }
	@GetMapping("modify")
	public String modifyPatient(@RequestParam Integer id,Model m) {
		
		
		//service.insertStudent(s);
		System.out.println(id);
		
		m.addAttribute("id", id);
		  m.addAttribute("postal",new Postal());
		  
//		List<Student> s=service.getAllStudents();
//		
//		m.addAttribute("list", s);
//		System.out.println("deleted doctor id is   ------------>"+id);
	return "edit";
	
       }
	
	@GetMapping("update")
	public String updatePatient(@ModelAttribute Postal h,Model m)
	{
		service.insertPostman(h);
		m.addAttribute("name",h.getPname());
		return "welcome";
	}
	
	

}