package com.wdlinger.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wdlinger.model.User;

public interface UserDao extends JpaRepository<User,Long>{
	
	public String getByUserName();
}
