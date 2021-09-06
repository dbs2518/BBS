<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bbs.BbsDAO" %>
<%@ page import="com.bbs.Bbs" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<%@ include file="../common/includeHead.jsp" %>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		if (userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("var location = 'login'");
			script.println("</script>");
		}	
			int bbsID = 0;
			if (request.getParameter("bbsID") != null) {
				bbsID = Integer.parseInt(request.getParameter("bbsID"));
			}
			if (bbsID == 0) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('유효하지 않은 글입니다.')");
				script.println("var location = 'bbs'");
				script.println("</script>");
			} 
			Bbs bbs = new BbsDAO().getBbs(bbsID);
			if (!userID.equals(bbs.getUserID())) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('권한이 없습니다.')");
				script.println("var location = 'bbs'");
				script.println("</script>");
		} else {
			if (request.getParameter("bbsTitle") == null || request.getParameter("bbsContent") == null
					|| request.getParameter("bbsTitle").equals("") || request.getParameter("bbsContent").equals("")) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 안 된 사항이 있습니다.')");
					script.println("history.back()");
					script.println("</script>");
				} else {
					BbsDAO bbsDAO = new BbsDAO();
					int result = bbsDAO.update(bbsID, request.getParameter("bbsTitle"), request.getParameter("bbsContent"));
					if (result == -1) {
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('글 수정이 실패했습니다.')");
						script.println("history.back()");
						script.println("</script>");
					}
					else {
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("var location = 'bbs'");
						script.println("</script>");
					}
				}
		}
	%>
	<script>
	if(location == "login") {
		location.href = '${path}/login'
	} else {
		location.href = '${path}/bbs'
	}
	</script>
</body>
</html>