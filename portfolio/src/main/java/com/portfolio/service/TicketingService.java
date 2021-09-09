package com.portfolio.service;

import java.util.List;

import com.portfolio.dto.TicketingDTO;

public interface TicketingService {
	
	public List<TicketingDTO> selectList(String sessionId) throws Exception;
	
	public int ticketingAction(TicketingDTO tdto);
	
	public List<TicketingDTO> ticketingInit(TicketingDTO tdto) throws Exception;
	
	public int ticketingUpdtAction(TicketingDTO tdto, String ticketingSn);
	
	public TicketingDTO snTicketingInit(TicketingDTO tdto) throws Exception;

	public int delete(int ticketingSn) throws Exception;
}
