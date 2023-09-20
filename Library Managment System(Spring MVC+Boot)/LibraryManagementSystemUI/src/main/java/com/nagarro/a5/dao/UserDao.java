package com.nagarro.a5.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nagarro.a5.entity.User;

@Repository
public interface UserDao extends CrudRepository<User, Integer>{

	public User findByUsername(String username);
	
}
