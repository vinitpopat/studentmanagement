package com.controller;


import java.util.List;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import com.entity.ComplaintEntity;
import com.repository.ComplaintRepository;
import com.repository.UserRepository;
import com.service.ComplaintService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ComplaintController 
{
	   @Autowired
	    private ComplaintRepository complaintRepository;
	private CrudRepository<ComplaintEntity, Long> complaintRepo;
	
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
    private ComplaintService complaintService;
	
	
	
	@GetMapping("/complaintForm")
    public String showForm() {
        return "complaintform"; // JSP page
    }

	    @PostMapping("addComplaint")
	    public String addComplaint(@ModelAttribute ComplaintEntity complaint) {
	        complaintRepository.save(complaint); // save in DB
	        return "redirect:/viewComplaints";  // redirect to complaints list
	    }



	    
	    @GetMapping("/viewComplaints")
	    public String viewComplaints(Model model) {
	        List<ComplaintEntity> complaints = complaintRepository.findAll();
	        model.addAttribute("complaints", complaints);
	        return "viewcomplaints"; // JSP file
	    }

	    @PostMapping("/submitComplaint")
	    public String saveComplaint(@ModelAttribute ComplaintEntity complaintEntity) {
	        complaintRepository.save(complaintEntity);
	        return "redirect:/viewComplaints";
	    }

	    
	   

	 
	    @GetMapping("delete/{id}")
	    public String deleteComplaint(@PathVariable Long id) {
	        complaintRepository.deleteById(id);
	        return "complaintform";
	    }
	
	
}
