<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<c:url var="style2" value="/resources/css/footer.css"></c:url>
<link rel="stylesheet" href="${style2}"/>

</head>
<body class="front">
  <footer>
   <c:url var="im1" value="/resources/images/backpack3.jpg"></c:url>
 <div id="custom" style="background-image:url('${im1}')">
  <a id="aboutus"></a>
  
  <h1 id="cust"><span class="font">about us</span></h1>
  <p><br><br>we are a big team <br> across many countries<br> promising to deliver the best <br> products to the customers</p>
  </div>
  
  <div class="container">
     <form class="form-inline">
       <div class="form-group group1">
           
           <input type="text" class="form-control" placeholder="enter name" id="name"/><br><br>
           <input type="text" class="form-control" placeholder="Email" id="name"/><br><br><br><br><br>
           <input type="text" class="form-control" placeholder="Subject" id="name"/><br><br>
           <textarea class="form-control" rows="15" cols="50" placeholder="Message" id="message"></textarea>
           
           <br>
           <a id="ref" href="#">SEND</a>
       </div>
     
     </form>
  </div>
  <div class="conatiner sting">
     <h1 id="con1">Contact</h1>
     <p id="con2">Please provide the details<br>incase of any enquiry<br>or any feedback,<br>Thank you.</p>
     <br>
     <p id="con2">harsha.pericherla@gmail.com<br>Tel-(+91)-(9866068226)</p>
  </div>
  
  <div id="mail">
     <h1>Join our mailing list <br><span class="text">and never miss an update</span></h1>
  </div>
  
  
  
  
 <form class="form-inline">
  <div class="form-group email">
   
    
      <input type="email" class="form-control" id="email" placeholder="Email Address">
      <button type="submit" class="btn btn-default">Subscribe Now</button>
      </div>
   
  </form>
  <h2 id="cust2">&copy 2017 by HARSHA</h2>
  </footer>
</body>

</html>