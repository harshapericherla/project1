<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html >
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
  
  <!-- Angular Js -->
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  
  <!-- Local Files -->
  <c:url var="script" value="/resources/js/header.js"></c:url>
  <script src="${script}"></script>
  
  <c:url var="style" value="/resources/css/header.css"></c:url>
  <link rel="stylesheet" href="${style}"/> 
  
  
<style>
  #show{
    color:white;
    
    padding:5px;
   }
</style>
</head>
<body class="front" >

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
     
    <%--  <!-- when user logged in -->
    <c:if test="${pageContext.request.userPrincipal.name!=null }">
      <li class="dropdown">
        <a id="uni" href="" class="dropdown-toggle" data-toggle="dropdown"><span class="on">Shop</span><b class="caret"></b></a>  
               <ul class="dropdown-menu">
        
       <!-- when user is admin show the add products -->       
      <security:authorize access="hasRole('ROLE_ADMIN')">                
     <c:url var="productform" value="/admin/product/productform"></c:url>
     <li><a class="two" href="${productform }"><span class="one">Add New Product</span></a></li>
     </security:authorize>
     
     <c:url var="allproducts" value="/all/product/getallproducts"></c:url>
     <li><a href="${allproducts }"><span class="one">Browse products</span></a></li>
     </ul>
     </li> --%>
     
   <%--   <li class="dropdown">
        <a id="uni" href="" class="dropdown-toggle" data-toggle="dropdown"><span class="on">Select By Category</span><b class="caret"></b></a>  
                     
              <ul class="dropdown-menu">
               <c:forEach var="c" items="${categories}">
                   <c:url var="url1" value="/all/product/productsByCategory?searchCondition=${c.categorydetails}"></c:url>
                  <li><a href="${url1}"><span class="one">${c.categorydetails}</span></a></li>
               </c:forEach>
               </ul>
    </li> --%>
    <c:url var="allproducts" value="/all/product/getallproducts"></c:url>
     <li><a href="${allproducts }"><span class="on">Shop</span></a></li>
     
     <!-- show add new product only when user is admin -->
      <security:authorize access="hasRole('ROLE_ADMIN')">                
     <c:url var="productform" value="/admin/product/productform"></c:url>
     <li><a class="two" href="${productform }"><span class="on">Add New Product</span></a></li>
     </security:authorize>
    
  <c:if test="${pageContext.request.userPrincipal.name!=null }">

    <security:authorize access="hasRole('ROLE_USER')">
    <c:url var="cart" value="/cart/getCartId"></c:url>
       
    <li><a href="${cart }" ><span class="on">Cart</span></a></li>
    
    </security:authorize>
    
    <li><a href=""><span class="on">welcome ${pageContext.request.userPrincipal.name}</span></a></li>
    </c:if>
    
    <!-- when user not logged in -->
    <c:if test="${pageContext.request.userPrincipal.name==null }">
    
     <c:url var="cart" value="/beforeCart/getBeforeLogin"></c:url>
    <li><a href="${cart }"><span class="on">Cart<span id="show"></span></span></a></li>

    
    <li><a href="<c:url value="/all/registrationForm"></c:url>"><span class="on">Register</span></a></li>
    
     <c:url var="login" value="/login"></c:url>
     <li><a  href="${login}"><span class="on">Login</span></a></li>
     </c:if>
     
    <!-- when user want to log out -->
     <c:if test="${pageContext.request.userPrincipal.name!=null }">
     <li><a href="<c:url value="/j_spring_security_logout"></c:url>"><span class="on">logout</span></a></li>
     </c:if>
  
  </ul>
  
   </div>
  </nav>
 </header>
</body>
 <c:url var="script9" value="/resources/js/headercontroller.js"></c:url>
  <script src="${script9}"></script>
</html>