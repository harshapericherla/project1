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
  <style>
    #cart{
      margin:150px;
    }
    .ance *{
     padding:20px;
     margin:10px;
    }
  </style>
</head>
<body>
<div id="cart">
 <div ng-app="app" ng-controller="ProductController">
   <div ng-init="getCart(${cartId})">
   <a href="" class="btn btn-success pull-right">Check Out</a>
  
      <table class="ance">
        <thead>
        <tr>
          <th>Product</th>
          <th>Name</th>
          <th>Quantity</th>
          <th>Total Price</th>
          <th>Remove</th>
        </tr>
        </thead>
        <a href="" class="btn btn-danger" pull-left ng-click="clearCart()">ClearCart</a>
       <tr ng-repeat="ca in cart.cartItems">
       <td>
       <c:url var="sr" value="/all/product/image/{{ca.product.id}}"></c:url>
  <img src="${sr }" height="150px" width="150px"/>
       
       </td>
         <td>{{ca.product.name}}</td>
         <td>{{ca.quantity}}</td>
         <td>{{ca.totalPrice}}</td>
         <td><a href="" class="btn btn-danger" pull-left ng-click="removeFromCart(ca.id)">Remove
         </a></td>
       </tr>
       
      </table>
      Total Price: {{calculateGrandTotal()}}
   </div>
<c:url var="script7" value="/resources/js/controller.js"></c:url>
<script src="${script7}"></script> 
 </div>
</div>
</body>
</html>