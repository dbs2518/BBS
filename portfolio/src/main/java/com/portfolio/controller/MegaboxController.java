package com.portfolio.controller;

import java.util.List;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.dto.TicketingDTO;
import com.portfolio.dto.UserDTO;
import com.portfolio.service.TicketingService;
import com.portfolio.service.UserService;

@Controller
@RequestMapping("megabox")
public class MegaboxController {
	
	private static final Logger logger = LoggerFactory.getLogger(MegaboxController.class);
	
	@Resource
	private UserService service;
	@Resource
	private TicketingService ticketService;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {		
		logger.info("Welcome megabox");
		return "megabox/main";
	}
	
	//회원가입
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		logger.info("join");
		return "megabox/join";
	}
	
	//회원가입 기능
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinAction(UserDTO udto, HttpSession session, HttpServletResponse response) throws Exception {	
		String sessionId = null;
		
	    response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
    	PrintWriter out = response.getWriter();
    
    	//로그인 체크
	    if (session.getAttribute("userID") != null){
	    	sessionId = (String) session.getAttribute("userID");
	    }
	    if (sessionId != null){
			out.println("<script>alert('이미 로그인이 되어있습니다.');history.back();</script>");
			out.flush();
			return "/megabox/main";
	    }
	    
	    //회원가입 인풋값 체크
	    if (udto.getUserID() == null || udto.getUserPassword() == null || udto.getUserName() == null || udto.getUserEmail() == null){
			out.println("<script>alert('입력이 안 된 사항이 있습니다.');history.back();</script>");
			out.flush();
		} else {
			//회원가입
		    int result = service.joinAction(udto);
		    if (result == -1) {
				out.println("<script>alert('이미 존재하는 아이디입니다.');history.back();</script>");
				out.flush();
		    } else {
		    	session.setAttribute("userID", udto.getUserID());
				return "redirect:/megabox/main";
		    }
		}
		return "/megabox/main";
	}
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {		
		logger.info("login");
		return "megabox/login";
	}
	
	//로그인 기능
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginAction(String userID, String userPassword, HttpSession session, HttpServletResponse response) throws Exception {	
		String sessionId = null;

	    response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
    	PrintWriter out = response.getWriter();
    
    	//로그인 체크
	    if (session.getAttribute("userID") != null){
	    	sessionId = (String) session.getAttribute("userID");
	    }
	    if (sessionId != null){
			out.println("<script>alert('이미 로그인이 되어있습니다.');history.back();</script>");
			out.flush();
			return "/megabox/main";
	    }
	    
	    //로그인
	    int result = service.loginAction(userID, userPassword, session);
	    if (result == 1) {
			return "redirect:/megabox/main";
	    }
	    else if (result == 0) {
			out.println("<script>alert('비밀번호가 틀립니다.');history.back();</script>");
			out.flush();
	        return sessionId;
	    }
	    else if (result == -1) {
			out.println("<script>alert('존재하지 않는 아이디입니다.');history.back();</script>");
			out.flush();
	    	return sessionId;
	    }
	    else if (result == -2) {
			out.println("<script>alert('데이터베이스 오류가 발생했습니다.');history.back();</script>");
			out.flush();
	    	return sessionId;
	    }	
		return "/megabox/main";	
	}

	@RequestMapping(value = "/logout")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/megabox/main";
	}
	
	//예매하기
	@RequestMapping(value = "/ticketing", method = RequestMethod.GET)
	public ModelAndView ticketing(@ModelAttribute TicketingDTO tdto, HttpSession session, HttpServletResponse response) throws Exception {		
		logger.info("ticketing");
		
		String sessionId = null;
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/megabox/ticketing");
		
		response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
    	PrintWriter out = response.getWriter();
    	
    	//페이지 진입시 로그인 체크
	    if (session.getAttribute("userID") != null){
	    	sessionId = (String) session.getAttribute("userID");
	    }
	    if (sessionId == null){
			out.println("<script>alert('로그인이 되어있지 않습니다.');</script>");
			out.flush();
			mav.setViewName("/megabox/login");
			return mav;
	    }
	    
	    TicketingDTO ticketDTO = ticketService.snTicketingInit(tdto);
	    mav.addObject("ticketDTO", ticketDTO);
	    
		return mav;
	}
	

	//예매하기 기능
	@RequestMapping(value = "/ticketing", method = RequestMethod.POST)
	public String ticketingAction(TicketingDTO tdto, String ticketingSn, HttpSession session, HttpServletResponse response) throws Exception {		
		logger.info("ticketing");
		
        String sessionId = null;
		
		response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
    	PrintWriter out = response.getWriter();
        
    	//로그인 체크
    	sessionId = (String) session.getAttribute("userID");
	    if (sessionId == null){
			out.println("<script>alert('로그인이 되어있지 않습니다.');</script>");
			out.flush();
			return "/megabox/login";
	    }

	    tdto.setUserID(sessionId);
	    //예매 공란 체크
	    if (tdto.getUserID() == null || tdto.getMovieName() == "" || tdto.getMovieSeat() == null || tdto.getMovieTime() == "" || tdto.getMovieDay() == ""){
			out.println("<script>alert('선택 되지 않은 사항이 있습니다.');history.back();</script>");
			out.flush();
		} else {
			//예매하기
			if (tdto.getTicketingSn() == 0) {
			    int result = ticketService.ticketingAction(tdto);
			    if (result == -1) {
					out.println("<script>alert('중복된 좌석입니다.');history.back();</script>");
					out.flush();
			    } else {
					return "redirect:/megabox/lookup";
			    }
			} else {
				int result = ticketService.ticketingUpdtAction(tdto, ticketingSn);
			    if (result == -1) {
					out.println("<script>alert('중복된 좌석입니다.');history.back();</script>");
					out.flush();
			    } else if (result == 0){
					out.println("<script>alert('잘못된 접근입니다.');history.back();</script>");
					out.flush();
			    } else {
					return "redirect:/megabox/lookup";
			    }
			}
		}
		return "/megabox/main";
	}
	
	//예매하기 초기화
	@RequestMapping(value = "/ticketingInit", method = RequestMethod.POST)
    @ResponseBody
	public List<TicketingDTO> ticketingInit(TicketingDTO tdto) throws Exception {
		
		List<TicketingDTO> object = ticketService.ticketingInit(tdto);
		return object;
	}
	
	@RequestMapping(value = "/lookup", method = RequestMethod.GET)
	public String lookup(HttpSession session, HttpServletResponse response, Model model) throws Exception {		
		logger.info("lookup");
		
		String sessionId = null;
		
		response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
    	PrintWriter out = response.getWriter();

    	//로그인 체크
    	sessionId = (String) session.getAttribute("userID");
	    if (sessionId == null){
			out.println("<script>alert('로그인이 되어있지 않습니다.');</script>");
			out.flush();
			return "/megabox/login";
	    }
	    
	    List<TicketingDTO> tlist = ticketService.selectList(sessionId);
		model.addAttribute("tlist", tlist);
		return "/megabox/lookup";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int ticketingSn, HttpSession session, HttpServletResponse response) throws Exception {		
		logger.info("delete");
		
		String sessionId = null;
		
		response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
    	PrintWriter out = response.getWriter();

    	//로그인 체크
    	sessionId = (String) session.getAttribute("userID");
	    if (sessionId == null){
			out.println("<script>alert('로그인이 되어있지 않습니다.');</script>");
			out.flush();
			return "/megabox/login";
	    }

	    int result = ticketService.delete(ticketingSn);
	    if (result == -1) {
			out.println("<script>alert('글 삭제에 실패했습니다.');history.back();</script>");
			out.flush();
		} else {
			return "redirect:/megabox/lookup";
	    }
		return "/megabox/main";
	}
}
