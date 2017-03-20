<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>

<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form</title>
<script>
  $(function(){
	  $('input[name=mfg]').datepicker({
		 format:'YYYY-mm-dd ' 
	  });
  });
</script> 
 
<c:url var="style" value="/resources/css/register.css"></c:url>
<link rel="stylesheet" href="${style}"/> 
<c:url var="style" value="/resources/css/productform.css"></c:url>
<link rel="stylesheet" href="${style}"/> 
</head>

 <c:url var="img" value="/resources/images/green.jpg"></c:url>
 <c:url var="img1" value="/resources/images/login.jpg"></c:url>
 
<body style="background-image:url('${img}')">

  <div class="form" style="background-image:url('${img1}')">
  <c:url var="addAction" value="/admin/product/addproduct"></c:url>
  
  <form:form id="registerForm" modelAttribute="product" method="post"
   action="${addAction}" enctype="multipart/form-data">
   
  <div class="form-group">
   <label for="id"></label>
   <form:hidden path="id"/>
  </div>
  <div class="form-group">
   <label for="name" style="font-weight:bold;text-transform:uppercase">Product name</label>
   <form:input path="name" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   <form:errors path="name" cssStyle="color:#ff0000"></form:errors>
  </div>
  <div class="form-group">
   <label for="description" style="font-weight:bold;text-transform:uppercase">Description</label>
   <form:input path="description" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   <form:errors path="description" cssStyle="color:#ff0000"></form:errors>
  </div>
  <div class="form-group">
   <label for="price" style="font-weight:bold;text-transform:uppercase">Price</label>
   <form:input path="price" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   <form:errors path="price" cssStyle="color:#ff0000"></form:errors>
  </div>
  <div class="form-group">
   <label for="quantity" style="font-weight:bold;text-transform:uppercase">Quantity</label>
   <form:input path="quantity" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   
  </div>
     
<div class="form-group">
<label for="mfg" style="font-weight:bold;text-transform:uppercase">Mfg Date</label>
<form:input path="mfg" name="mfg" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>

</div>

<div class="form-group">
<label for="category" style="font-weight:bold;text-transform:uppercase">Category</label>
<c:forEach var="c" items="${categories}">
<form:radiobutton path="category.id" value="${c.id }"/><span style="padding:5px;font-weight:bold;text-transform:uppercase">${c.categorydetails}</span>
</c:forEach>
</div>
 
<div class="form-group">
<label for="image" style="font-weight:bold;text-transform:uppercase">Image</label>
<input name="fileUpload" type="file" />
</div>

  <input type="submit" value="Add Product" >
   
  </form:form>
</div>
 
</body>
</html>