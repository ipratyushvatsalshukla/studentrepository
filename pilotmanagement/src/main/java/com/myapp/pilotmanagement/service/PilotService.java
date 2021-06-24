package com.myapp.pilotmanagement.service;

import java.util.List;

import com.myapp.pilotmanagement.entities.Pilot;

public interface PilotService {
	public int insertPilot(Pilot doct);
	public  Pilot getPilot(int id);
	public List<Pilot> getAllPilot();
	public void deletePilot(Integer id);
	public Pilot updatePilot(int id);
	int update(Pilot e);
}
