<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../common/includeHead.jsp" %>
<body>
	<%
		session.invalidate();
	%>
	<script>
		location.href = '${path}/main';
	</script>
</body>
</html>