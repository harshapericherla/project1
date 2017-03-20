<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <c:url var="script" value="/resources/js/header.js"></c:url>
  <script src="${script}"></script>
  
 
  <c:url var="style1" value="/resources/css/section.css"></c:url>
  <link rel="stylesheet" href="${style1}"/> 
</head>

<body class="front">
  <c:url var="im" value="/resources/images/backpack5.jpg"></c:url>
  <section id="one" style="background-image:url('${im}')">
  <h1>Plan your adventure</h1>
   <c:url var="allproducts" value="/all/product/getallproducts"></c:url>
  <h2><a href="${allproducts }">Shop now</a></h2>
  </section>
</body>
</html>