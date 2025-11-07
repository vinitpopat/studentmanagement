package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.UserEntity;
import com.repository.UserRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private UserRepository userRepository;
    
    @GetMapping("/login")
    public String login() {
        return "login"; // Will load /WEB-INF/views/login.jsp
    }

    
    @PostMapping("checkauthr")
    public String checkAuth(
            @RequestParam String name,
            @RequestParam String password,
            @RequestParam String role,
            HttpSession session,
            HttpServletRequest request) {

        // ✅ Fetch user by name, password, and role
        UserEntity user = userRepository.findByNameAndPasswordAndRole(name, password, role);

        if (user != null) {
            // ✅ Store user info in session
            session.setAttribute("loggedInUser", user);

            // ✅ Redirect based on role
            switch (role.toUpperCase()) {
                case "ADMIN":
                    return "admindashboard"; // JSP page for admin
                case "FACULTY":
                    return "facultydashboard"; // JSP page for faculty
                case "STUDENT":
                    return "StudentDashboard"; // JSP page for student
                default:
                    return "welcome"; // fallback
            }
        } else {
            // ❌ Invalid login, send back to login page with error
            request.setAttribute("error", "Invalid name, password, or role!");
            return "hi";
        }
    }
}
