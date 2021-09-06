package com.portfolio.service;

import javax.servlet.http.HttpSession;

import com.portfolio.dto.UserDTO;

public interface UserService {
	
	public int loginAction(String userid, String passwd, HttpSession session);
	
	public int joinAction(UserDTO udto);
}
