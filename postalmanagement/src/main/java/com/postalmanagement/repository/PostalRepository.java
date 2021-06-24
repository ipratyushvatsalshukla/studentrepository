package com.postalmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.postalmanagement.models.Postal;

public interface PostalRepository extends JpaRepository<Postal, Integer> {

}
