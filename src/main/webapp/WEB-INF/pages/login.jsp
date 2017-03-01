<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page isELIgnored="false" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url var="security" value="j_spring_security_check"></c:url>

<form action="${security}" method="post">
Enter UserName <input type="text" name="j_username"><br>
Enter Password <input type="text" name="j_password"><br>
<input type="submit" value="submit">
</form>

</body>
</html>