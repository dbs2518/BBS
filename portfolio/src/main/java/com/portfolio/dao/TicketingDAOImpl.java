package com.portfolio.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.portfolio.dto.TicketingDTO;

@Repository
public class TicketingDAOImpl implements TicketingDAO {
	
	@Resource
	private SqlSession session;
	
	@Override
	public List<TicketingDTO> selectList(String sessionId) throws Exception {
		return session.selectList("ticketingMapper.selectList",sessionId);
	}
	
	@Override
	public int delete(int ticketingSn) throws Exception {
		return session.delete("ticketingMapper.delete",ticketingSn);
	}
	
	@Override
	public int insert(TicketingDTO tdto) throws Exception {
		return session.insert("ticketingMapper.insert",tdto);
	}
}
