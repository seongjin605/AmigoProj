<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="location" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
	#header{
		margin:0 auto;
		width: 850px;
		font-family: 'Tangerine', serif; 
		padding-top:10px;
		padding-bottom:20px;
		text-align: center;
	}
	
	#header > a{
		display: block;
		margin:0 270px;
		width: 270px;
		font-weight: 700;
		font-size: 120px;
		letter-spacing:6px;
		text-decoration: none;
		color:#b49759;
	}
</style>
<div id="header">
	<a href="../../../index.jsp">amiGo</a>
</div>
