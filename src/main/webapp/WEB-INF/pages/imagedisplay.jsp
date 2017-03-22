<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

  <c:url var="style6" value="/resources/css/imagedisplay.css"></c:url>
  <link rel="stylesheet" href="${style6}"/> 
   <c:url var="script2" value="/resources/js/imagedisplay.js"></c:url>
  <script src="${script2}"></script>

</head>
<body id="dark">
<div id="newarrival">
<div id="newcontent">
<h1 id="incontent">NEW   ARRIVALS</h1>
<br/>
<a id="incontent2" href="<c:url value="/all/product/getallproducts"></c:url>">SHOP NOW</a>
</div>
<c:url var="im1" value="/resources/images/backpack6.jpg"></c:url>
<div id="newimage" style="background-image:url('${im1}');background-size:cover">
<h1></h1>
</div>
</div>
<br/>
<br/>
<h1 id="sale" style="clear:left;clear:right">NOW ON SALE <br><span id="saleinner">UP TO 50%</span></h1>
<span class="glyphicon glyphicon-chevron-left clickleft"></span><span class="glyphicon glyphicon-chevron-right clickright"></span>
<div id="slider">
 <ul class="slides">
        <c:forEach var="p" items="${discount}" >
          <c:url var="sr" value="/all/product/image/${p.id}"></c:url>
          <c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
           <li class="slide"><a href="${url }"><img src="${sr }"/><span id="product_name">${p.name }</span></a>
              <span id="discount_price" style="margin-left:15%;color:white;font-size:16px;font-weight:bold;text-decoration:line-through">INR 6000</span>
              <span id="pro_price" style="margin-left:6%;color:white;font-size:16px;font-weight:bold">INR ${p.price }</span>
           </li>
        
         </c:forEach>
  </ul>
  </div>
  <br/>
  <br/>
</body>
</html>