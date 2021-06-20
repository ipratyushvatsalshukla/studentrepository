package com.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.entities.Customer;
import com.food.repository.CustomerRepo;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	CustomerRepo repo;
	
	@Override
	public int insertCustomer(Customer cust) {
		int i=0;
		Customer c= repo.save(cust);
		if(c!=null) {
				i= c.getId();
		}
		return i;
	}

	@Override
	public Customer getCustomer(int id) {
		Customer c = repo.getById(id);
		return c;
	}

	@Override
	public List<Customer> getAllCustomer() {
		List<Customer> list = repo.findAll();
		return list;
	}

	@Override
	public void deleteCustomer(Integer id) {
		repo.deleteById(id);
	}

	@Override
	public Customer updateCustomer(int id, Customer c) {
		Customer updCustomer = repo.getById(id);
        updCustomer.setName(c.getName());
        updCustomer.setAge(c.getAge());
        updCustomer.setContact(c.getContact());
        updCustomer.setAddress(c.getAddress());
        updCustomer.setGender(c.getGender());
        return repo.save(updCustomer);
    }

}
