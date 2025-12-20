package com.sg.controller;

import java.nio.file.attribute.UserDefinedFileAttributeView;
import java.security.PublicKey;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sg.model.CartItem;
import com.sg.model.User;
import com.sg.service.userService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller 
public class EcomController {
	@Autowired
	userService userService ;

	@GetMapping("/")
	public String getIndexPage() {

		return "index"; 
	}

	@GetMapping("/login-page")
	public String getLoginPage() {
		return "login";
	}

	@GetMapping("/user-page")
	public String getUserPage(Model model) {

		User user = null;

		model.addAttribute("user", user);
		return "userDetails";
	}


	   @GetMapping("/register-page")
		public String getRegisterPage() {
			return "register"; 
		}
	
	@PostMapping("/register")
	public String registerUser(User user) {

		userService.registerUser(user);
		return "login";
	}
	
	@PostMapping("/verify-login")
	public String verifyLogin(
	        String email,
	        String password,
	        HttpSession session,
	        Model model) {

	    User user = userService.verifyLogin(email, password);

	    if (user != null) {
	        session.setAttribute("loggedInUser", user);
	        return "redirect:/";
	    }

	    model.addAttribute("error", "Invalid email or password");
	    return "login";
	}



	@GetMapping("/logout")
	public String logout(HttpSession session) {

	    
	    session.invalidate();

	   
	    return "redirect:/";
	}

	




	
}
