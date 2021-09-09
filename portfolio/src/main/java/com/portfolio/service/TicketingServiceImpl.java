package com.portfolio.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.portfolio.dao.TicketingDAO;
import com.portfolio.dto.TicketingDTO;

@Service
public class TicketingServiceImpl implements TicketingService  {
	
	private static final Logger logger = LoggerFactory.getLogger(TicketingService.class);
	
	@Resource
	private TicketingDAO tdao;

    //조회하기 
	@Override
	public List<TicketingDTO> selectList(String sessionId) throws Exception {
		return tdao.selectList(sessionId);
	}
	
	//삭제하기 
    @Override
    public int delete(int ticketingSn) throws Exception {
    	try {
    		int delete = tdao.delete(ticketingSn);
    		logger.info(String.valueOf(delete));
    		return 1;
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return -1;
    }
	
    //예매하기 
	@Override
    public int ticketingAction(TicketingDTO tdto) {
		try {
			//db에 저장
			int insert = tdao.insert(tdto);
			logger.info(String.valueOf(insert));
			return 1; //예매 성공
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;  //예매 실패
	}
	
	//예매하기 초기화
	@Override
	public List<TicketingDTO> ticketingInit(TicketingDTO tdto) throws Exception {
		return tdao.ticketingInit(tdto);
	}
	
	//예매변경하기 
	@Override
    public int ticketingUpdtAction(TicketingDTO tdto, String ticketingSn) {
		try {
			String userID = tdao.selectOne(ticketingSn);
			String sessionId = tdto.getUserID();
			//db에 저장
			if(userID.equals(sessionId)) {
				int update = tdao.update(tdto);
				logger.info(String.valueOf(update));
				return 1; //예매변경 성공
			} else {
				return 0;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;  //예매변경 실패
	}
	
	//예매변경하기 초기화
	@Override
	public TicketingDTO snTicketingInit(TicketingDTO tdto) throws Exception {
		return tdao.snTicketingInit(tdto);
	}
}