<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id ="bbs" class="com.bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
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
		} else {
			if (bbs.getBbsTitle() == null || bbs.getBbsContent() == null){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 안 된 사항이 있습니다.');");
					script.println("history.back();");
					script.println("</script>");
				} else {
					BbsDAO bbsDAO = new BbsDAO();
					int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent());
					if (result == -1) {
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('글쓰기에 실패했습니다.');");
						script.println("history.back();");
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