<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">
 <c:url var="url" value="/all/registerCustomer"></c:url>
 <form:form action="${url}" modelAttribute="customer">
   <div class="form-group">
     <form:label path="firstname">First Name</form:label>
     <form:input path="firstname"/>
   </div>
   <div class="form-group">
     <form:label path="lastname">Last Name</form:label>
     <form:input path="lastname"/>
   </div>
   <div class="form-group">
     <form:label path="email">Email</form:label>
     <form:input path="email"/>
   </div>
   <div class="form-group">
     <form:label path="phonenumber">PhoneNumber</form:label>
     <form:input path="phonenumber"/>
   </div>
   <div class="form-group">
     <form:label path="users.username">UserName</form:label>
     <form:input path="users.username"/>
   </div>
   <div class="form-group">
     <form:label path="users.password">Password</form:label>
     <form:input path="users.password" type="password"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.apartmentNumber">ApartmentNumber</form:label>
     <form:input path="billingAddress.apartmentNumber"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.streetName">StreetName</form:label>
     <form:input path="billingAddress.streetName"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.city">City</form:label>
     <form:input path="billingAddress.city"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.state">State</form:label>
     <form:input path="billingAddress.state"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.country">Country</form:label>
     <form:input path="billingAddress.country"/>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.zipcode">Zipcode</form:label>
     <form:input path="billingAddress.zipcode"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.apartmentNumber">ApartmentNumber</form:label>
     <form:input path="shippingAddress.apartmentNumber"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.streetName">StreetName</form:label>
     <form:input path="shippingAddress.streetName"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.city">City</form:label>
     <form:input path="shippingAddress.city"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.state">State</form:label>
     <form:input path="shippingAddress.state"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.country">Country</form:label>
     <form:input path="shippingAddress.country"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.zipcode">ZipCode</form:label>
     <form:input path="shippingAddress.zipcode"/>
   </div>
   
   <input type="submit" value="register"/>
   
 </form:form>
</div>
</div>
</body>
</html>