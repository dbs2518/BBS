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
}