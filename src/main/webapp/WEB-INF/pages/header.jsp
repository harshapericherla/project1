<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  
  <!-- DataTables -->
  <link rel="stylesheet" href="//cdn.datatables.net/1.10.1/css/jquery.dataTables.css"/>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="//cdn.datatables.net/1.10.1/js/jquery.dataTables.js"></script>    
  
  <!-- Calendar -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
  <!-- Main bootstrap -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  <!-- Local Files -->
  <c:url var="script" value="resources/js/header.js"></c:url>
  <script src="${script}"></script>
  
  <c:url var="style" value="/resources/css/header.css"></c:url>
  <link rel="stylesheet" href="${style}"/> 
  
  
  
</head>
<body class="front">

<header>
 <nav class="navbar navbar-default">
 <div class="container-fluid">
   
  <div class="navbar-header">
      <a class="navbar-brand" href="#"><span id="on1">thebackpack</span></a>
  </div>
    
  <ul class="nav navbar-nav navbar-right">
      <c:url var="home" value="/home"></c:url>
     <li><a  href="${home}"><span class="on">Home</span></a></li>
     
     
     <li><a href="#aboutus"><span class="on">About</span></a></li>
     
    
      <li class="dropdown">
        <a id="uni" href="" class="dropdown-toggle" data-toggle="dropdown"><span class="on">Shop</span><b class="caret"></b></a>  
               <ul class="dropdown-menu">        
     <c:url var="productform" value="/admin/product/productform"></c:url>
     <li><a class="two" href="${productform }"><span class="one">Add New Product</span></a></li>
     
     <c:url var="allproducts" value="/all/product/getallproducts"></c:url>
     <li><a href="${allproducts }"><span class="one">Browse products</span></a></li>
     </ul>
     </li>
     
     <li class="dropdown">
        <a id="uni" href="" class="dropdown-toggle" data-toggle="dropdown"><span class="on">Select By Category</span><b class="caret"></b></a>  
                     
              <ul class="dropdown-menu">
               <c:forEach var="c" items="${categories}">
                   <c:url var="url1" value="/all/product/productsByCategory?searchCondition=${c.categorydetails}"></c:url>
                  <li><a href="${url1}"><span class="one">${c.categorydetails}</span></a></li>
               </c:forEach>
               </ul>
    </li>
    <li><a href="<c:url value="/all/registrationForm"></c:url>"><span class="on">Register</span></a></li>
    
     <c:url var="login" value="/login"></c:url>
     <li><a  href="${login}"><span class="on">Login</span></a></li>
  </ul>
  
   </div>
  </nav>
 </header>
</body>
</html>