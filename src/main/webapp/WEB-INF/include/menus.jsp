<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">


  <div id="header">
	<a href="/" id="title"><h1 id="gradtext">URMS</h1></a>
		 <div id="namebox">
		 	<ul>${ sessionScope.login.user_Nm } 님, 환영합니다!</ul>
		 	<br />
		 	<a href="/userMod?user_Id=${sessionScope.login.user_Id}">회원정보 관리</a>
		 	<b><font color="gray">｜</font></b>
			<a href="/logout">로그아웃</a>
		</div>
  </div>

  <nav role="navigation" id="nav">
	  <ul id="main-menu">
	    <li>
		 <a href="/">유지보수현황</a>
	    </li>   
	    <li>
		 <a href="#">유지보수조회</a>
	    </li>
	     <li>
		 <a href="#">유지보수요청</a>
	    </li>
	    <li>
		 <a href="#">공통코드관리</a>
	    </li>
	  </ul>
   </nav>