package com.food.service;

import java.util.List;
import java.util.Optional;

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
	public Customer updateCustomer(int id) {
		Optional<Customer> c= repo.findById(id);
		return c.get();
    }

	@Override
	public int update(Customer c) {
		repo.save(c);
		return c.getId();
	}

	
}
