package com.portfolio.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.portfolio.dao.UserDAO;
import com.portfolio.dto.UserDTO;

@Service
public class UserServiceImpl implements UserService  {
	
	private static final Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Resource
	private UserDAO udao;
	
	@Resource
	private BCryptPasswordEncoder encode;
	
	//로그인 
	@Override
    public int loginAction(String userID, String userPassword, HttpSession session) {
    	//result : 0(로그인성공), 1(아이디미존재), 2(패스워드불일치)
    	logger.debug(userID);
    	
    	int result = -2;
    	//db조회
    	UserDTO udto = udao.selectOne(userID);
    	
    	if(udto == null) {
    		result = -1;  //아이디 없음
    	}else {
    		if(userPassword.equals(udto.getUserPassword())) {
    	    	session.setAttribute("userID", udto.getUserID());
    			result = 1; //로그인 성공
    		}
    		else {
    			result = 0; //비밀번호 불일치
    		}
    	}
    	return result; //데이터베이스 오류
    }
    
    //회원가입 
	@Override
    public int joinAction(UserDTO udto) {
		try {
			//db에 저장
			int insert = udao.insert(udto);
			logger.info(String.valueOf(insert));
			return 1; //회원가입 성공
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //회원가입 실패
	}
}