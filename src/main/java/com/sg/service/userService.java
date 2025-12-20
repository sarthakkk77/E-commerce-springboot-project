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
	 public User verifyLogin(String email, String password) {

		    Optional<User> opt = userDao.findByEmail(email);

		    if (opt.isPresent()) {
		        User user = opt.get();

		        if (user.getPassword().equals(password)) {
		            return user;
		        }
		    }
		    return null;
		}

}
