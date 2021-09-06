<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- context path -->
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!-- head -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" type="text/css" href="${path}/resources/BBS/css/bootstrap.css" > 
<link rel="stylesheet" type="text/css" href="${path}/resources/BBS/css/custom.css" >
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="${path}/resources/BBS/js/bootstrap.js"></script>
<title>JSP 게시판 웹 사이트</title>
</head>