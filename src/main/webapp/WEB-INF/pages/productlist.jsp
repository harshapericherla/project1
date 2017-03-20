<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Products</title>

<c:url var="style" value="/resources/css/productlis.css"></c:url>
<link rel="stylesheet" href="${style}"/>
<c:url var="script10" value="/resources/js/header.js"></c:url>
<script src="${script10}"></script> 
</head>
<%-- <script>
$(document).ready(function(){
    var searchCondition = '${searchCondition}';
    $(".table").DataTable({
    	"dom":' <"search"f><"top"l>rt<"bottom"ip><"clear">',
    	"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],      //"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
    	"oSearch":{"sSearch":searchCondition}
    });
});
</script>

<body class="back">

   <div class="container">
   
     <table class="table table-stripped">
        <thead>
         <tr>
             <th>Image</th>
            <th>Product Name</th>
            <th>Description</th>
            <th>Category Details</th>
             
            <th>View<security:authorize access="hasRole('ROLE_ADMIN')"> /Delete/Edit</security:authorize></th>
           
         </tr>
        </thead>
        <c:forEach var="p" items="${products}" >
          <tr>
            <td>
            <!--  
              <c:url var="sr" value="/resources/images/${p.id}.png"></c:url>
              <img src="${sr }" height="100px" width="100px"/>
            -->
            <c:url var="sr" value="/all/product/image/${p.id}"></c:url>
              <img src="${sr }" height="100px" width="100px"/>
            </td>
            <td>${p.name}</td>
            <td>${p.description}</td>
            <td>${p.category.categorydetails}</td>
             
           <td>
           <c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
           <a href="${ url}"><span class="glyphicon glyphicon-info-sign"></span></a>
           <security:authorize access="hasRole('ROLE_ADMIN')"> 
           <c:url var="delete" value="/admin/product/deleteproduct/${p.id}"></c:url>
           <a href="${delete}"><span class="glyphicon glyphicon-remove"></span></a>
           <c:url var="edit" value="/admin/product/editform/${p.id}"></c:url>
           <a href="${edit}"><span class="glyphicon glyphicon-pencil"></span></a></td>
           </security:authorize>
          </tr>
          
        </c:forEach>
     </table>
   </div>
 
 
</body> --%>
<body ng-app="product" ng-controller="ProController" ng-init="getObj()">
<div class="upper">
<div class="sortByCategory">

   <span class="text">Search</span>
  <input id="input" type="text" ng-model="search"/>
  <span class="searchtext">Search By</span>
  <ul class="categories">
     <li id="all"><input type="radio" ng-model="search" value=" " >All</li>
     <li id="arrival"><input type="radio" ng-model="search" value="fresh" >New Arrivals</li>
     <li id="discount"><input type="radio" ng-model="search" value="discount" >Discount</li>
     <li id="general"><input type="radio" ng-model="search" value="general" >General</li>
  </ul>
 </div>
 <div class="orderby">
  <span class="ordertext">Order By</span>
   <ul class="sorting">
    <li id="name"><input type="radio" ng-model="order" value="name">name</li>
    <li id="low"><input type="radio" ng-model="order" value="price" >Low Price</li>
    <li id="high"><input type="radio" ng-model="order" value="-price">High Price</li>
    <li id="high"><input type="radio" ng-model="order" value="mfg">Manufactured Date</li>
   </ul>
 </div>
</div>
  <ul class="productlist">
       <li ng-repeat="product in obj| orderBy:order | filter:search ">
       
                <c:url var="sr" value="/all/product/image/{{product.id}}"></c:url>
                <c:url var="url" value="/all/product/viewproduct/{{product.id}}"></c:url>
                
                <a href="${url}"><img ng-src="${sr }" height="200px" width="200px"/><br/></a>
                <span id="pro_name">{{product.name}}</span><br/>
                    
                <div class="image_below"><button id="buy" ng-click="addToCart(product.id)">BUY NOW</button> <span id="inr">INR {{product.price}}</span></div>
            
       <security:authorize access="hasRole('ROLE_ADMIN')"> 
           <c:url var="delete" value="/admin/product/deleteproduct/{{product.id}}"></c:url>
           <a href="${delete}"><span class="remove">Remove</span></a>
           <c:url var="edit" value="/admin/product/editform/{{product.id}}"></c:url>
           <a href="${edit}"><span class="edit">Edit</span></a></td>
       </security:authorize>
      </li>
  </ul>
</body>
<c:url var="script7" value="/resources/js/productcontroller.js"></c:url>
<script src="${script7}"></script> 
<c:url var="script6" value="/resources/js/controller.js"></c:url>
<script src="${script6}"></script> 
<c:url var="script9" value="/resources/js/headercontroller.js"></c:url>
  <script src="${script9}"></script>
</html>