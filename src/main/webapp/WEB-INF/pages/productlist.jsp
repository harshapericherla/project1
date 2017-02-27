<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Products</title>

<c:url var="style" value="/resources/css/productList.css"></c:url>
<link rel="stylesheet" href="${style}"/>
</head>
<script>
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
            <th>View/Delete/Edit</th>
         </tr>
        </thead>
        <c:forEach var="p" items="${products}" >
          <tr>
            <td>
              <c:url var="sr" value="/resources/images/${p.id}.png"></c:url>
              <img src="${sr }" height="100px" width="100px"/>
            </td>
            <td>${p.name}</td>
            <td>${p.description}</td>
            <td>${p.category.categorydetails}</td>
           <td>
           <c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
           <a href="${ url}"><span class="glyphicon glyphicon-info-sign"></span></a>
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