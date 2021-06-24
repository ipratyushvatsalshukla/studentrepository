package com.myapp.pilotmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myapp.pilotmanagement.entities.Pilot;
import com.myapp.pilotmanagement.repository.PilotRepo;
import com.myapp.pilotmanagement.service.PilotService;

@Service
public class PilotServiceImpl implements PilotService{
	
	@Autowired
	PilotRepo rep;

	@Override
	public List<Pilot> getAllPilot() {
		
		List<Pilot> list=rep.findAll();
		return list;
		
	}
	
	@Override
	public int update(Pilot e) {
		rep.save(e);
		return e.getPid();
	}

	@Override
	public void deletePilot(Integer id) {
		
		 rep.deleteById(id);
	}

	@Override
	public int insertPilot(Pilot emp) {
		
		int i=0;
		Pilot e=rep.save(emp);
		if(e!=null) {
			i=e.getPid();
		}
		return i;
	}

	@Override
	public Pilot getPilot(int id) {
		
		Pilot e=rep.getById(id);
		return e;
	
	}
	@Override
	public Pilot updatePilot(int id) {
		Optional<Pilot> e= rep.findById(id);
		return e.get();
	}
}