package com.hospitalmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hospitalmanagement.models.Hospital;

public interface HospitalRepository extends JpaRepository<Hospital,Integer> {

}
