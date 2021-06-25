package com.hotelmanagement.service;

import java.util.List;

import com.hotelmanagement.entities.Hotel;

public interface HotelSevice {
	public int insertEmployee(Hotel eid);
	public  Hotel getEmployee(int id);
	public List<Hotel> getAllEmployee();
	public void deleteEmployee(Integer id);
	public  int modifyEmployee(int id,String name,String dept, String passwrod);
}
