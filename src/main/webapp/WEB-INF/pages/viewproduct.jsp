<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:url var="style" value="/resources/css/header.css"></c:url>
<link rel="stylesheet" href="${style}"/> 
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
<div ng-app="app" ng-controller="ProductController">
<div class="page-header">
<b>PRODUCT DETAILS</b>

</div>
<div id="viewimage">
  <c:url var="sr" value="/all/product/image/${product.id}"></c:url>
  <img src="${sr }" height="400px" width="400px"/>
</div>
<table class="table">
<tr>
<td>Product Name</td>
<td>${product.name }</td>
</tr>
<tr>
<td>Price</td>
<td>${product.price }</td>
</tr>
<tr>
<td>Quantity</td>
<td>${product.quantity }</td>
</tr>
<tr>
<td>Date Manufactured</td>
<td>${product.mfg}</td>
</tr>
<tr>
<td>Product Description</td>
<td>${product.description }</td>
</tr>
<tr>
 <td><a href="#" ng-click="addToCart(${product.id })"><span class="glyphicon glyphicon-shopping-cart"></span></a></td> 
 
</tr>
</table>
</div>
<c:url var="script6" value="/resources/js/controller.js"></c:url>
<script src="${script6}"></script> 
</body>
</html>