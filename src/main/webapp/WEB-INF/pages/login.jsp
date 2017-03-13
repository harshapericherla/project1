<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
  .move{
    margin:10%;
    padding:13%;
    padding-top:0;
    background-color:white;
    border-radius:10%;
    width:35%;
    float:right;
    margin-right:3%;
    border-left:35px solid Orange;
  }
  body{
   background-color:black;
  }
  .moveb{
    margin:10%;
    border-radius:10%;
    width:31%;
    padding:12%;
    float:left;
    background-color:Orange;
     
    }
  .moveb h1{
     font-size:50px;
     color:white;
     font-weight:bold;
    
  }
  .add{
    margin-left:30%;
    padding-left:14%;
    width:40%;
    cursor:pointer;  
  }
  .move input[type=text]{
    position:relative;
    border:0px solid white;
    border-radius:4px;
    padding:10px;
    top:40px;
    left:-125px;
    width:250px;
    border-bottom:0.5px solid black;
    text-decoration:none;
  }
  
  .move button{
  position:relative;
  top:95px;
  left:50px;
  padding:20px;
  border-radius:50%;
  background-color:Orange;
  border:0px solid white;
  }
  .move input[placeholder]{
    font-size:30px;
    font-weight:bold;
    opacity:0.8;
    color:grey;
  }
   .glyphicon-play{
     font-size:30px;
     color:white;
   }
   .login h1{
     position:relative;
     color:white;
     text-align:center;
     top:80px;
     margin:0;
     padding:0;
     opacity:0.7;
     font-family:cursive;
   }
</style>
<script>
  $(document).ready(function(){
	  $('.move').hide();
	  $('.moveb').click(function(){
		  
		  $(this).fadeOut("slow",function(){
			  $(this).removeClass("add");
			  $('.login').fadeOut(3000);
		  });
		$('.move').slideDown(2000); 
		 $('.moveb').show('slide', {direction: 'down'},1300);
	  });
  });
</script>
</head>
<body>
<div class="login">
<c:url var="security" value="j_spring_security_check"></c:url>
<h1>${error }</h1>
<h1>${logout }</h1>
 <h1>${registersuccess}</h1>
 </div>
 
<div class="moveb add">
 <h1>LOGIN</h1>
</div>
<div class="move">
<form action="${security}" method="post">
<input type="text" name="j_username" placeholder="Username"><br><br>
<input type="text" name="j_password" placeholder="Password"><br>
<button type="submit"><span class="glyphicon glyphicon-play"></span></button>
</form>
</div>
</body>
</html>