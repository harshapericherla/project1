<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/pages/header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:url var="style1" value="/resources/css/collectCustomerInfo.css"></c:url>
  <link rel="stylesheet" href="${style1}"/> 
</head>
<body>
 <div class="topForm">
      <div id="top">
     <button id="value" disabled="true">2</button>
     <h4 id="text">Collecting Shipping Details</h4>
      </div>
<form:form modelAttribute="order">
   <div class="form1">
   <label for="apartmentNumber">Apartment Number</label>
   <form:input path="cart.customer.shippingAddress.apartmentNumber" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
   <div class="form">
   <label for="streetName">Street Name</label>
   <form:input path="cart.customer.shippingAddress.streetName" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
   <div class="form">
   <label for="city">City</label>
   <form:input path="cart.customer.shippingAddress.city" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
   <div class="form">
   <label for="State">State</label>
   <form:input path="cart.customer.shippingAddress.state" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
   <div class="form">
   <label for="Country">Country</label>
   <form:input path="cart.customer.shippingAddress.country" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
   <button name="_eventId_backToCollectCustomerInfo">Back</button>
   <button name="_eventId_shippingDetailCollected">Next</button>
   <button name="_eventId_cancel">cancel</button>
  </form:form>
  </div>
</body>
</html>