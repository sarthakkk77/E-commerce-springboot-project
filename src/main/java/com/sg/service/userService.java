package com.sg.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sg.Dao.UserDao;
import com.sg.model.User;



@Service
public class userService {

	@Autowired
	UserDao userDao;
	public void registerUser(User user) {
		
		userDao.save(user);
	}
	
	  public boolean verifyLogin(String username, String password) {

	        if (username == null || password == null) {
	            return false;
	        }

	        List<User> users = userDao.findAll();

	        for (User u : users) {
	            System.out.println("DB row -> username=" + u.getUsername()
	                    + ", password=" + u.getPassword());

	            if (u.getUsername() == null || u.getPassword() == null) {
	                continue;
	            }

	            if (u.getUsername().equals(username) &&
	                u.getPassword().equals(password)) {
	                return true;
	            }
	        }

	        return false;
	    }
	
        
}
