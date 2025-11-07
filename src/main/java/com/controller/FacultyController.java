package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.UserEntity;
import com.repository.UserRepository;

@Controller
public class FacultyController 
{
	 @Autowired
	 private UserRepository userRepository;  
	 
	@PostMapping("student")
	public String studentdashboard()
	{
		return "studentdashboard";
	}
	
	@PostMapping("addfaculty")
	public String openfaculty(@RequestParam("name") String name,
                               @RequestParam("email") String email,
                               @RequestParam("password") String password,
                               @RequestParam("role") String Role
                               ) 
    {

        UserEntity user = new UserEntity();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setRole(Role);
    	
       System.out.println("sgnup user called");   
        
        userRepository.save(user);

        return "admindashboard";
    }
    
    @GetMapping("addfac")
	public String addfac()
	{
		return "addfaculty";
	}
    
    @GetMapping("listfaculty")
    public String listFaculty(Model model) {
        List<UserEntity> facultyList = userRepository.findByRole("FACULTY");
        model.addAttribute("facultyList", facultyList);
        return "listfaculty";
    }

	
}
	

