package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.BatchEntity;
import com.repository.BatchRepository;

@Service
public class BatchService 
{
	 @Autowired
	 private BatchRepository batchRepository;

	    public BatchEntity saveBatch(BatchEntity batch) {
	        return batchRepository.save(batch);  // Saves data to DB
	    }
	
	
}
