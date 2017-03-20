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
     <button id="value" disabled="true">1</button>
     <h4 id="text">Collecting Customer Details</h4>
      </div>
  <form:form modelAttribute="order">
   <div class="form1">
   <label for="firstname">First Name</label>
   <form:input path="cart.customer.firstname" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
   <div class="form">
   <label for="lastname">Last Name</label>
   <form:input path="cart.customer.lastname" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
   <div class="form">
   <label for="email">Email</label>
   <form:input path="cart.customer.email" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
   <div class="form">
   <label for="phonenumber">Phone Number</label>
   <form:input path="cart.customer.phonenumber" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
   <button name="_eventId_customerInfoCollected">Next</button>
   <button name="_eventId_cancel">cancel</button>
  </form:form>
  </div>
</body>
</html>