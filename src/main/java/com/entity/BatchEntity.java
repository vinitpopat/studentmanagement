package com.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="Batchtable")
public class BatchEntity 
{
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int batch_id;
    private String batch_name;
    private String course_name;
    private String subject;
    private String start_date;
    private String mode;
    private String instructor;
    private int total_seats;
    private String description;
    private String duration;
    
	
	
	
	
	
	
	
}
