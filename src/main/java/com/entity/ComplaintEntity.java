package com.entity;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Complianttable")
public class ComplaintEntity 
{
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private Long id;
	
	@Column(name = "full_name", nullable = false) 
	private String full_name;
	
	@Column(name = "roll_no", nullable = false, unique = true) 
	private String roll_no;
	
	@Column(name = "email", nullable = false) 
	private String email;
	
	@Column(name = "description", length = 1000) 
	private String description;
	
	@Column(name = "complaint_id", nullable = false) 
	private Long complaint_id;
	
	@Column(name = "complaint_type", nullable = false)
	private String complaint_type;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getRoll_no() {
		return roll_no;
	}

	public void setRoll_no(String roll_no) {
		this.roll_no = roll_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getComplaint_id() {
		return complaint_id;
	}

	public void setComplaint_id(Long complaint_id) {
		this.complaint_id = complaint_id;
	}

	public String getComplaint_type() {
		return complaint_type;
	}

	public void setComplaint_type(String complaint_type) {
		this.complaint_type = complaint_type;
	}
	
	
	

}