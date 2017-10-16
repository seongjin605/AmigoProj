<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/top-menu.css"/>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/reset.css" />
<div class="nav_wrapper"> 
    <div class="spinner-master">
	    <input type="checkbox" id="spinner-form" />
	    <label for="spinner-form" class="spinner-spin">
	    <div class="spinner diagonal part-1"></div>
	    <div class="spinner horizontal"></div>
	    <div class="spinner diagonal part-2"></div>
	    </label>
 	</div>

  	<a href="index" title="logo" id="logo"><img src="images/Logo5.png" width="120" height="80"></a>
 	    <div class="sub-logo">
		    <a href="#" class="btn" id="search"><i class="fa fa-search" aria-hidden="true"></i></a>
		    <a href="login" class="btn" id="log"><i class="fa fa-user-o" aria-hidden="true"></i></a>
		    <a href="join_first" class="btn" id="join"><i class="fa fa-user-plus" aria-hidden="true"></i></a>
 	    </div>
 	    
  	<nav id="menu" class="menu">
    	<ul class="dropdown">
      		<li ><a href="#Link" title="Link">about amiGO</a></li>
	      
	      <li ><a href="#Link" title="Link">동호회</a>	
	        <ul >
	            <li ><a href="#Link" title="Link ">EWG란?</a></li>
	            <li ><a href="#Link" title="Link">EWG 등록성분 사용빈도</a></li>
	        </ul>
	      </li>
	      
	      <li ><a href="mainBoard" title="Link">자유게시판</a></li>
	      
	      <li ><a href="#Link" title="Link">고객센터</a>
	        <ul >
	            <li ><a href="#Link" title="Link">자주하는 질문</a></li>
	            <li ><a href="#Link" title="Link">1:1 질문</a></li>
	        </ul>
	      </li>
	    </ul>
  	</nav>
  	
    <form class="search_box" id="search_box" action="/search/">
	    <input name="search_criteria" placeholder="Search here" value="" type="text">
	    <input class="search_icon" value="Search" type="submit">
    </form>	  
</div>
<script src="script/script.js"></script> 


