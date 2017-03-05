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
<h1 id="sale">NOW ON SALE <br><span id="saleinner">UP TO 50%</span></h1>
<span class="glyphicon glyphicon-chevron-left clickleft"></span><span class="glyphicon glyphicon-chevron-right clickright"></span>
<div id="slider">
 <ul class="slides">
        <c:forEach var="p" items="${discount}" >
          <c:url var="sr" value="/all/product/image/${p.id}"></c:url>
            
           <li class="slide"><img src="${sr }"/><span id="product_name">${p.name }</span></li>
           
         </c:forEach>
  </ul>
  </div>
</body>
</html>