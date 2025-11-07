package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.ComplaintEntity;


public interface ComplaintRepository extends JpaRepository<ComplaintEntity , Long>
{

	
	
}
