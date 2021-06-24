package com.myapp.pilotmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.myapp.pilotmanagement.entities.Pilot;

@Repository
public interface PilotRepo extends JpaRepository<Pilot, Integer>{

}
