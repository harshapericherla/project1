<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%@ include file="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="register">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
 <c:url var="script" value="/resources/js/header.js"></c:url>
  <script src="${script}"></script>
  
  <c:url var="style" value="/resources/css/header.css"></c:url>
<link rel="stylesheet" href="${style}"/> 
  
   <c:url var="style" value="/resources/css/register.css"></c:url>
<link rel="stylesheet" href="${style}"/> 

<c:url var="script" value="/resources/js/jregister.js"></c:url>
  <script src="${script}"></script>


</head>
 <c:url var="img" value="/resources/images/green.jpg"></c:url>
 <c:url var="img1" value="/resources/images/login.jpg"></c:url>
 
<body style="background-image:url('${img}')">
<div class="form" ng-controller="RegisterController"  style="background-image:url('${img1}')">
 <c:url var="url" value="/all/registerCustomer"></c:url>

 <form:form action="${url}" modelAttribute="customer">
    <div class="form_top">
   <div class="form-group">
     <form:label path="firstname" >First Name</form:label>
     <form:input path="firstname" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
     <form:errors path="firstname" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   
   
   <div class="form-group">
     <form:label path="lastname" >Last Name</form:label>
     <form:input path="lastname" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
      <form:errors path="lastname" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="email">Email</form:label>
     <form:input path="email" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
      <form:errors path="email" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="phonenumber">PhoneNumber</form:label>
     <form:input path="phonenumber" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
      <form:errors path="phonenumber" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="users.username">UserName</form:label>
     <form:input path="users.username" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
      <c:out value="${duplicateUsername}"></c:out>
   </div>
   <div class="form-group">
     <form:label path="users.password">Password</form:label>
     <form:input path="users.password" type="password" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
      <form:errors path="users.password" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   
   <div class="form-group">
     <form:label path="billingAddress.apartmentNumber">ApartmentNumber</form:label>
     <form:input path="billingAddress.apartmentNumber" cssStyle="border:2px solid rgba(0,0,0,0.2)" ng-model="apt"/>
      <form:errors path="billingAddress.apartmentNumber" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.streetName">StreetName</form:label>
     <form:input path="billingAddress.streetName" cssStyle="border:2px solid rgba(0,0,0,0.2)" ng-model="str"/>
      <form:errors path="billingAddress.streetName" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.city">City</form:label>
     <form:input path="billingAddress.city" cssStyle="border:2px solid rgba(0,0,0,0.2)" ng-model="city"/>
      <form:errors path="billingAddress.city" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.state">State</form:label>
     <form:input path="billingAddress.state" cssStyle="border:2px solid rgba(0,0,0,0.2)" ng-model="state"/>
      <form:errors path="billingAddress.state" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.country">Country</form:label>
     <form:input path="billingAddress.country" cssStyle="border:2px solid rgba(0,0,0,0.2)" ng-model="country"/>
      <form:errors path="billingAddress.country" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.zipcode">Zipcode</form:label>
     <form:input path="billingAddress.zipcode" cssStyle="border:2px solid rgba(0,0,0,0.2)" ng-model="zip"/>
      <form:errors path="billingAddress.zipcode" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   
  <a id="show">Edit Shipping Address</a>
   
   
   <div class="shipping">
   <div class="form-group">
     <form:label path="shippingAddress.apartmentNumber">ApartmentNumber</form:label>
     <form:input path="shippingAddress.apartmentNumber" cssStyle="border:2px solid rgba(0,0,0,0.2)" value="{{apt}}"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.streetName">StreetName</form:label>
     <form:input path="shippingAddress.streetName" cssStyle="border:2px solid rgba(0,0,0,0.2)" value="{{str}}"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.city">City</form:label>
     <form:input path="shippingAddress.city" cssStyle="border:2px solid rgba(0,0,0,0.2)" value="{{city}}"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.state">State</form:label>
     <form:input path="shippingAddress.state" cssStyle="border:2px solid rgba(0,0,0,0.2)" value="{{state}}"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.country">Country</form:label>
     <form:input path="shippingAddress.country" cssStyle="border:2px solid rgba(0,0,0,0.2)" value="{{country}}"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.zipcode">ZipCode</form:label>
     <form:input path="shippingAddress.zipcode" cssStyle="border:2px solid rgba(0,0,0,0.2)" value="{{zip}}"/>
   </div>
  </div>
  <br/>
   <input type="submit" value="register"/>
   </div>
 </form:form>
</div>
</body>
<c:url var="script2" value="/resources/js/register.js"></c:url>
  <script src="${script2}"></script>
</html>