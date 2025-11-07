package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.ComplaintEntity;
import com.repository.ComplaintRepository;

@Service
public class ComplaintService 
{
	 @Autowired
	    private ComplaintRepository complaintRepository;

	    public List<ComplaintEntity> getAllComplaints() {
	        return complaintRepository.findAll();
	    }
	
	
}
