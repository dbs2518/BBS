package com.portfolio.dao;

import com.portfolio.dto.UserDTO;

public interface UserDAO {
	
	public UserDTO Login(String userid);	
	
	public UserDTO selectOne(String userid);
	
	public int insert(UserDTO udto);
}
