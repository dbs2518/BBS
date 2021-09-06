package com.portfolio.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.portfolio.dto.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Resource
	private SqlSession session;
	
	@Override
	public UserDTO Login(String userid) {
		return session.selectOne("userMapper.Login",userid);
	}
	
	@Override
	public UserDTO selectOne(String userid) {
		return session.selectOne("userMapper.selectOne",userid);
	}
	
	@Override
	public int insert(UserDTO udto) {
		return session.insert("userMapper.insert",udto);
	}
}
