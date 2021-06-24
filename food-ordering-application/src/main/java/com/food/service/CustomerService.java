package com.food.service;

import com.food.entities.Customer;

import java.util.List;

public interface CustomerService {
	public int insertCustomer(Customer cust);
	public Customer getCustomer(int id);
	public List<Customer> getAllCustomer();
	public void deleteCustomer(Integer id);
	public Customer updateCustomer(int id);
	public int update(Customer c);
}
