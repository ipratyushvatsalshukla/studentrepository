package com.hotelmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hotelmanagement.entities.Hotel;

@Repository
public interface hotelRepo extends JpaRepository<Hotel, Integer> {
	
	
	
}
