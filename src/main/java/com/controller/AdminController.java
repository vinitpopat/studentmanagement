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
public class AdminController 
{
	 @Autowired
	 private UserRepository userRepository;  
	
	@GetMapping("student")
	public String studentdashboard()
	{
		return "admindashboard";
	}
	
//	@PostMapping("submitComplaint")
//	public String submitComplaint()
//	{
//		return "admindashboard";
//	}
	   
	@GetMapping("addadmin")
	public String openadmin()
	{
		return "addadmin";
	}
	

    @PostMapping("addadmin")
    public String registerUser(@RequestParam("name") String name,
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
    
    @GetMapping("listadmins")
    public String listAdmins(Model model) {
        List<UserEntity> adminList = userRepository.findByRole("ADMIN");
        model.addAttribute("adminList", adminList);
        return "listadmin";
    }

    
	
	
}

