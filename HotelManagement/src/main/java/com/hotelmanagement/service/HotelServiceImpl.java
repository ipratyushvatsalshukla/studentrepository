package com.hotelmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotelmanagement.entities.Hotel;
import com.hotelmanagement.repository.hotelRepo;

@Service
public class HotelServiceImpl implements HotelSevice {

	@Autowired
	hotelRepo repo;	
	
	@Override
	public int insertEmployee(Hotel empl) {
		// TODO Auto-generated method stub
		int i=0;
		Hotel d=repo.save(empl);
		if(d!=null) {
			i=d.getEmp_id();
		}
		return i;
	}

	@Override
	public Hotel getEmployee(int id) {

		Hotel e=repo.getById(id);		
		return e;
	}	

	public List<Hotel> getAllEmployee() {
		
		List<Hotel> list=repo.findAll();		
		return list;
	}

	public void deleteEmployee(Integer id) {

	  repo.deleteById(id);
	}

	@Override
	public int modifyEmployee(int id, String name, String dept, String password) {
		Hotel e=repo.getById(id);
		e.setEmp_name(name);
		e.setDepartment(dept);
		e.setPassword(password);
		int i=insertEmployee(e);
		return i;
	}
}
