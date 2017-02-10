<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Products</title>
</head>
<body>

   <div class="container">
   
     <table class="table table-stripped">
        <thead>
         <tr>
            <th>Product Name</th>
            <th>Description</th>
            <th>Category Details</th>
         </tr>
        </thead>
        <c:forEach var="p" items="${products}" >
          <tr>
            <td>${p.name}</td>
            <td>${p.description}</td>
            <td>${p.category.categorydetails}</td>
          </tr>
          <tr>
           <c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
           <td><a href="${ url}"><span class="glyphicon glyphicon-info-sign"></span></a>
           <c:url var="delete" value="/admin/product/deleteproduct/${p.id}"></c:url>
           <a href="${delete}"><span class="glyphicon glyphicon-remove"></span></a>
           <c:url var="edit" value="/admin/product/editform/${p.id}"></c:url>
           <a href="${edit}"><span class="glyphicon glyphicon-pencil"></span></a></td>
          </tr>
        </c:forEach>
     </table>
   </div>
 
 
</body>
</html>