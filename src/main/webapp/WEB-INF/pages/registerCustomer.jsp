<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%@ include file="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
 <c:url var="script" value="resources/js/header.js"></c:url>
  <script src="${script}"></script>
  
  <c:url var="style" value="/resources/css/header.css"></c:url>
<link rel="stylesheet" href="${style}"/> 
  
</head>
<body>
<div class="container-wrapper">
<div class="container">
 <c:url var="url" value="/all/registerCustomer"></c:url>
 
 <form:form action="${url}" modelAttribute="customer">
    
   <div class="form-group">
     <form:label path="firstname">First Name</form:label>
     <form:input path="firstname" class="form-control"/>
   </div>
   
   
   <div class="form-group">
     <form:label path="lastname">Last Name</form:label>
     <form:input path="lastname"  class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="email">Email</form:label>
     <form:input path="email" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="phonenumber">PhoneNumber</form:label>
     <form:input path="phonenumber" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="users.username">UserName</form:label>
     <form:input path="users.username" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="users.password">Password</form:label>
     <form:input path="users.password" type="password" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.apartmentNumber">ApartmentNumber</form:label>
     <form:input path="billingAddress.apartmentNumber" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.streetName">StreetName</form:label>
     <form:input path="billingAddress.streetName" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.city">City</form:label>
     <form:input path="billingAddress.city" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.state">State</form:label>
     <form:input path="billingAddress.state" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.country">Country</form:label>
     <form:input path="billingAddress.country" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.zipcode">Zipcode</form:label>
     <form:input path="billingAddress.zipcode" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.apartmentNumber">ApartmentNumber</form:label>
     <form:input path="shippingAddress.apartmentNumber" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.streetName">StreetName</form:label>
     <form:input path="shippingAddress.streetName" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.city">City</form:label>
     <form:input path="shippingAddress.city" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.state">State</form:label>
     <form:input path="shippingAddress.state" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.country">Country</form:label>
     <form:input path="shippingAddress.country" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.zipcode">ZipCode</form:label>
     <form:input path="shippingAddress.zipcode" class="form-control"/>
   </div>
  
   <input type="submit" value="register" class="btn btn-default"/>
   
 </form:form>
</div>
</div>
</body>
</html>