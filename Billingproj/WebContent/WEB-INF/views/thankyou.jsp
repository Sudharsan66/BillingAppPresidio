<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://bootswatch.com/4/sandstone/bootstrap.min.css">
</head>
<body style="background-color: #262626;">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary d-flex justify-content-between">
  <a class="navbar-brand" href="#">Online Store</a>
 <div >
    
   <a href="<c:url value='/logout' />"><button class="btn btn-danger">LOGOUT</button></a>
   
  </div>
</nav>
<div class="container " style="color:#FFF" align="center">
<h1>Thank you for Shopping...</h1>
<form action="invoice/download">
<input type="text" value="${invoice}" hidden="true" name="inv">
<input type="submit" value="Download Invoice" class="btn btn-success mt-2">
</form><br><br>
<a href="<c:url value='/welcome' />">Continue Shopping</a>
</div>
</body>
</html>