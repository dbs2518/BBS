<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.PrintWriter" %>
<!-- context path -->
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"> 
    <meta name="author" content="team2">
    <meta name="description" content="메가박스 사이트 리뉴얼 페이지.">
    <meta name="keywords" content="메가박스 사이트 만들기">
    <title>메가박스</title>

    <!-- CSS -->
    <link rel="stylesheet" href="${path}/resources/megabox/css/reset.css">
    <link rel="stylesheet" href="${path}/resources/megabox/css/style.css">
    <link rel="stylesheet" href="${path}/resources/megabox/css/swiper.css">
    <link rel="stylesheet" href="${path}/resources/megabox/css/font-awesome.css">

    <!-- 파비콘 -->
    <link rel="shortcut icon" href="${path}/resources/megabox/icons/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="${path}/resources/megabox/icons/favicon_72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="96x96" href="${path}/resources/megabox/icons/favicon_96.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${path}/resources/megabox/icons/favicon_144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="192x192" href="${path}/resources/megabox/icons/favicon_192.png" />

    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">