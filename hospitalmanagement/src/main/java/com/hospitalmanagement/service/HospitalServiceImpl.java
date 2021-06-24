package com.hospitalmanagement.service;

import com.hospitalmanagement.models.Hospital;
import com.hospitalmanagement.repository.HospitalRepository;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HospitalServiceImpl implements HospitalService {
	@Autowired
	private HospitalRepository repo;

	@Override
	public Hospital insertPatient(Hospital h) {

		Hospital ho = repo.save(h);
		return ho;
	}

	public Hospital getPatient(int pId) {
		Hospital h = repo.getById(pId);
		return h;
	}

	public List<Hospital> getAllPatients() {
		return repo.findAll();
	}

	public void deletePatient(Integer id) {
		// TODO Auto-generated method stub
		repo.deleteById(id);

	}

}