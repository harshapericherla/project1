<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <c:url var="style" value="/resources/css/cart.css"></c:url>
  <link rel="stylesheet" href="${style}"/>
</head>
<body>
<div id="cart">
 <div>
   <div>
   <a href="<c:url value="/beforeCart/removeAll"></c:url>" class="left">ClearCart</a>
   <a href="<c:url value="/before"></c:url>" class="right">CheckOut</a>
  
      <table class="ance">
        <thead>
        <tr>
          <th class="product">Product</th>
          <th class="item">Item</th>
          <th class="quan">Quantity</th>
          <th class="total">Total</th>
          <th class="remove">Remove</th>
        </tr>
        </thead>
        
        <c:forEach var="p" items="${listproduct}" >
       <tr>
       <td>
       <c:url var="sr" value="/all/product/image/${p.id}"></c:url>
  <img src="${sr }" height="150px" width="150px"/>
       
       </td>
         <td id="item">${p.name}</td>
         <td class="quan">${p.quantity}</td>
         <td class="total">INR ${p.price}</td>
         <td class="remove"><a href="<c:url value="/beforeCart/remove/${p.id}"></c:url>" class="btn btn-danger" pull-left>Remove
         </a></td>
       </tr>
       </c:forEach>
      </table>
    
     <div id="totalprice"> 
     <span id="sub">SubTotal: INR ${totalPrice }</span>
     </div>
     <div id="content">
       <p>Discount,shipping and tax will be calculated in checkout.</p>
     </div>
   </div>

 </div>
</div>
</body>
</html>