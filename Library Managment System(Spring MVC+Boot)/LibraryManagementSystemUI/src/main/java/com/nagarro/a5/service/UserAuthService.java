package com.nagarro.a5.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.a5.dao.UserDao;
import com.nagarro.a5.entity.User;

@Service
public class UserAuthService {

	private UserDao userDao;
	
	@Autowired
	public UserAuthService(UserDao userDao) {
	
		this.userDao = userDao;
		
	}
	
	public boolean authenticateUser(User user) {
	
		User checkUser = userDao.findByUsername(user.getUsername());
		
		System.out.println(checkUser);
		
		if(checkUser == null)
			return false;
		else if(user.getPassword().equals(checkUser.getPassword())) 
				return true;
		else 
			return false;
	}
	
}
