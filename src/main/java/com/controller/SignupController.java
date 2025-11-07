package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.UserEntity;
import com.repository.UserRepository;

@Controller
public class SignupController {

    @Autowired
    private UserRepository userRepository;  // Inject repository

    
    @GetMapping("/signup")
    public String showSignupForm() {
        return "signup";  // loads signup.jsp
    }

    
    @PostMapping("signupuser")
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

        return "welcome";
    }
}
