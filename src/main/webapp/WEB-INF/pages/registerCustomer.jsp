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

<style>
  #change{
     margin-left:30px;
  }
  ::-ms-clear {
  display: none;
}
.form_top{
  margin-left:15%;
}

</style>
</head>
 <c:url var="img" value="/resources/images/green.jpg"></c:url>
 <c:url var="img1" value="/resources/images/login.jpg"></c:url>
 
<body style="background-image:url('${img}')">
<div class="form" ng-controller="RegisterController"  style="background-image:url('${img1}')">
 <c:url var="url" value="/all/registerCustomer"></c:url>
   <h1 style="text-align:center;font-weight:bold;opacity:0.8">REGISTRATION FORM</h1>
 <form:form action="${url}" modelAttribute="customer">
    <div class="form_top">
   <div class="form-group">
     <form:label path="firstname" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">First Name</form:label><br/>
     <form:input path="firstname" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" placeholder="Enter your first name..."/>
     <form:errors path="firstname" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   
   
   <div class="form-group">
     <form:label path="lastname" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">Last Name</form:label><br/>
     <form:input path="lastname" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" placeholder="Enter your last name..."/>
      <form:errors path="lastname" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="email" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">Email</form:label><br/>
     <form:input path="email" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" placeholder="Enter your Email Address..."/>
      <form:errors path="email" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="phonenumber" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">PhoneNumber</form:label><br/>
     <form:input path="phonenumber" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" placeholder="Enter your phone number..."/>
      <form:errors path="phonenumber" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="users.username" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">UserName</form:label><br/>
     <form:input path="users.username" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" placeholder="Enter your User Name..."/>
      <c:out value="${duplicateUsername}"></c:out>
   </div>
   <div class="form-group">
     <form:label path="users.password" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">Password</form:label><br/>
     <form:input path="users.password" type="password" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" placeholder="Enter your Password..."/>
      <form:errors path="users.password" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   
   <div class="form-group">
     <form:label path="billingAddress.apartmentNumber" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">ApartmentNumber</form:label><br/>
     <form:input path="billingAddress.apartmentNumber" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" ng-model="apt" placeholder="Enter your ApartmentNumber..."/>
      <form:errors path="billingAddress.apartmentNumber" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.streetName" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">StreetName</form:label><br/>
     <form:input path="billingAddress.streetName" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" ng-model="str" placeholder="Enter your StreetName..."/>
      <form:errors path="billingAddress.streetName" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.city" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">City</form:label><br/>
     <form:input path="billingAddress.city" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" ng-model="city" placeholder="Enter your City..."/>
      <form:errors path="billingAddress.city" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.state" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">State</form:label><br/>
     <form:input path="billingAddress.state" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" ng-model="state" placeholder="Enter your State..."/>
      <form:errors path="billingAddress.state" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.country" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">Country</form:label><br/>
     <form:input path="billingAddress.country" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" ng-model="country" placeholder="Enter your Country..."/>
      <form:errors path="billingAddress.country" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.zipcode" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">Zipcode</form:label><br/>
     <form:input path="billingAddress.zipcode" cssStyle="border:3px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" ng-model="zip" placeholder="Enter your ZipCode..."/>
      <form:errors path="billingAddress.zipcode" cssStyle="color:#ff0000;text-transform:uppercase;opacity:0.7;font-weight:bold"></form:errors>
   </div>
   
  <a id="show" style="font-size:24px;text-transform:uppercase;">Edit Shipping Address</a>
   
   
   <div class="shipping">
   <div class="form-group">
     <form:label path="shippingAddress.apartmentNumber" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">ApartmentNumber</form:label><br/>
     <form:input path="shippingAddress.apartmentNumber" cssStyle="border:2px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" value="{{apt}}"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.streetName" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">StreetName</form:label><br/>
     <form:input path="shippingAddress.streetName" cssStyle="border:2px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" value="{{str}}"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.city" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">City</form:label><br/>
     <form:input path="shippingAddress.city" cssStyle="border:2px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" value="{{city}}"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.state" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">State</form:label><br/>
     <form:input path="shippingAddress.state" cssStyle="border:2px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" value="{{state}}"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.country" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">Country</form:label><br/>
     <form:input path="shippingAddress.country" cssStyle="border:2px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" value="{{country}}"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.zipcode" cssStyle="font-size:18px;font-weight:bold;opacity:0.9;text-transform:uppercase">ZipCode</form:label><br/>
     <form:input path="shippingAddress.zipcode" cssStyle="border:2px solid rgba(0,0,0,0.2);padding:10px;border-radius:2%;padding-right:25%;font-size:20px;font-weight:bold" value="{{zip}}"/>
   </div>
  </div>
  <br/>
   <input type="submit" value="register" style="margin-left:30%;"/>
   </div>
 </form:form>
</div>
</body>
<c:url var="script2" value="/resources/js/register.js"></c:url>
  <script src="${script2}"></script>
</html>