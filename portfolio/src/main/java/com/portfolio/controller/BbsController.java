package com.portfolio.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.portfolio.service.UserService;

@Controller
public class BbsController {
	
	private static final Logger logger = LoggerFactory.getLogger(BbsController.class);
	
	@Resource
	private UserService service;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {		
		logger.info("Welcome BBS");
		return "BBS/main";
	}
	
	@RequestMapping(value = "/megabox", method = RequestMethod.GET)
	public String megabox() {		
		logger.info("Welcome megabox");
		return "megabox/main";
	}
	
	@RequestMapping(value = "/bbs", method = RequestMethod.GET)
	public String bbs() {		
		return "BBS/bbs";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {		
		return "BBS/login";
	}
	
	  @RequestMapping("/test") // 어떤 요청을 처리할지 표시
	  public void service(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();
	    out.println("Hello, world!");
    	out.println("<script>alert('이미 로그인이 되어있습니다.');history.back();</script>");
	  }

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginAction(String userID, String userPassword, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {	
		String userid = null;

	    response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
    	PrintWriter out = response.getWriter();
    	out.println("<script>alert('이미 로그인이 되어있습니다.');history.back();</script>");
    
	    if (session.getAttribute("userID") != null){
	    	userid = (String) session.getAttribute("userID");
	    }
	    if (userid != null){
			/*
			 * out.println("<script>alert('이미 로그인이 되어있습니다.');history.back();</script>");
			 * out.flush();
			 */
			return "redirect:/main";
	    }
	    
	    int result = service.loginAction(userID, userPassword, session);
	    if (result == 1) {
	    }
	    else if (result == 0) {
			/*
			 * out.println("<script>alert('비밀번호가 틀립니다.');history.back();</script>");
			 * out.flush();
			 */
	    }
	    else if (result == -1) {
			/*
			 * out.println("<script>alert('존재하지 않는 아이디입니다.');history.back();</script>");
			 * out.flush();
			 */
	    }
	    else if (result == -2) {
			/*
			 * out.println("<script>alert('데이터베이스 오류가 발생했습니다.');history.back();</script>");
			 * out.flush();
			 */
	    }		
		return "redirect:/main";
	}
	
	@RequestMapping(value = "/logoutAction", method = RequestMethod.GET)
	public String logoutAction() {		
		return "BBS/logoutAction";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {		
		return "BBS/join";
	}

	@RequestMapping(value = "/joinAction", method = RequestMethod.POST)
	public String joinAction() {		
		return "BBS/joinAction";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() {		
		return "BBS/write";
	}

	@RequestMapping(value = "/writeAction", method = RequestMethod.POST)
	public String writeAction() {		
		return "BBS/writeAction";
	}

	@RequestMapping(value = "/deleteAction", method = RequestMethod.GET)
	public String deleteAction() {		
		return "BBS/deleteAction";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update() {		
		return "BBS/update";
	}

	@RequestMapping(value = "/updateAction", method = RequestMethod.POST)
	public String updateAction() {		
		return "BBS/updateAction";
	}
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view() {		
		return "BBS/view";
	}
}
