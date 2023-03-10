<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="/img/favicon.ico" />
<style>
@import url('https://fonts.googleapis.com/css2?family=Gugi&family=Nanum+Gothic&display=swap');

body {
  	font-family: 'Nanum Gothic', sans-serif;
    height: 100vh;
    background: url(/img/back.png) no-repeat center;
    background-size: cover;
 }
h1 { padding : 180px 0 0 0;
 	text-align : center;
 	font-size  : 50px;
 	color : #444444;}
 	
h3 { padding : 0px;
 	text-align : center;
 	font-size  : 30px;
 	color : gray;}
div{
       text-align: center;
       margin:0 auto;
   }
   
#joinform {
 margin : 0 auto;
 text-align : left;
}   

td { padding : 10px; font-weight : bold;}

#gradtext{
		
  		font-family: 'Gugi', cursive;
        background: #55ffaa;
        background: -webkit-linear-gradient(left, #55ff55, #29ffe8);
        background:    -moz-linear-gradient(right, #55ff55, #55ffff);
        background:      -o-linear-gradient(right, #55ff55, #55ffff);
        background:         linear-gradient(to right, #55ff55, #55ffff);
        -webkit-background-clip: text;
                background-clip: text;
        color: transparent;
        font-size: 48px;
        font-weight: bold;
}
input[type=submit] {-webkit-appearance:none;
    width: 150px;
    font-size: 20px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: 50px;
    text-align:center;
    border: none;
    background-size: 300% 100%;
    border-radius: 50px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
}   
   
input[type=submit]:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

input[type=submit]:focus {
    outline: none;
}
</style>
<script>
	$(function(){
	$("#btnLogin").click(function(){
	 userid=$("#userid").val();
	 var passwd=$("#passwd").val(); if(userid == ""){
	  alert("???????????? ???????????????");
	  $("#userid").focus(); //??????????????? ??????
	
	  return; //?????? ??????
	}
	if(passwd==""){
	 alert("??????????????? ???????????????"); 
	 $("#passwd").focus();
	  return;
	}
	//??? ????????? ???????????? ????????? ??????
	 document.form1.action= "${path}/user/loginProcess";
	 document.form1.submit(); //??????
	 });
	});
</script>
</head>
<body>
	<div id="main">
		
	<h1 id="gradtext">URMS</h1>
	<h3>URMS ?????????</h3>
	<form action="/userMod" method="POST">
	  <table id="modform">
	  <tr>
        <td>????????? ?????? ????????? ????????? ??????????????? ?????? ??????????????????</td>
      </tr>
       <tr>
		<td class="td1">????????????</td>
		<td><input type="password" id="user_Pw" name="user_Pw" /></td>
	   </tr>
		</table>
		<input type="submit" value="??????" />
   	  </form>
    </div>
</body>
</html>