package com.portfolio.dao;

import java.util.List;

import com.portfolio.dto.TicketingDTO;

public interface TicketingDAO {
	
	public List<TicketingDTO> selectList(String sessionID) throws Exception;

	public int delete(int ticketingSn) throws Exception;
	
	public int insert(TicketingDTO tdto) throws Exception;
	
	public String selectOne(String ticketingSn) throws Exception;
	
	public int update(TicketingDTO tdto) throws Exception;
}
