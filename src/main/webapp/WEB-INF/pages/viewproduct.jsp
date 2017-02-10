<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="page-header">
<b>PRODUCT DETAILS</b>

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
</table>


</body>
</html>