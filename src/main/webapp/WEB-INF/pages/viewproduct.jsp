<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:url var="style" value="/resources/css/header.css"></c:url>
<link rel="stylesheet" href="${style}"/> 
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<c:url var="style" value="/resources/css/viewproduct.css"></c:url>
<link rel="stylesheet" href="${style}"/> 

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

</head>
<body>
<div ng-app="app" ng-controller="ProductController">
<div class="page-header">


</div>
<div id="viewimage">
  <c:url var="sr" value="/all/product/image/${product.id}"></c:url>
  <img src="${sr }" height="400px" width="400px"/>
</div>

<ul>
<li id="name" class="lic">${product.name }</li>


<li id="price" class="lic">INR
${product.price }</li>


<%-- <li>Date Manufactured
${product.mfg}</li>


<li>Product Description
${product.description }</li>
 --%>

<li id="csym"><button href="#" ng-click="addToCart(${product.id })">Add to cart</button></li>
<span class="fa fa-facebook-f"></span>
<span class="fa fa-twitter"></span>
<span class="fa fa-google-plus"></span>

<div class="matter">
  <p>I'm a product description. This is a great place to "sell" your product and grab buyers' attention. 
  Describe your product clearly and concisely. 
  Use unique keywords. Write your own description instead of using manufacturers' copy.</p>
</div>
<span class="headings">Product info</span>
<div class="matter">
  <p>The group of features and characteristics of a saleable good which determine its desirability
   and which can be controlled by a manufacturer to meet certain basic requirements. Most businesses that produce 
   goods for sale have a product quality or assurance department that monitors outgoing products for consumer acceptability.
</p>
</div>
<span class="headings">Return and refund policy</span>
<div class="matter">
  <p>Major Defects: although all the products are thoroughly tested before release, unexpected errors may occur. 
  Such issues must be submitted for our Technical Support Team’s approval. 
  We keep the right to rectify the error or defect within 72 hours. 
  If any deficiency is approved and we fail to correct it within 72 hours from the date of the initial complaint letter or any other notification provided by a Customer, 
  the refund will be issued to the customer in full without any compensations or reimbursements. </p>
</div>
 </ul>
</div>
<c:url var="script6" value="/resources/js/controller.js"></c:url>
<script src="${script6}"></script> 
</body>
</html>