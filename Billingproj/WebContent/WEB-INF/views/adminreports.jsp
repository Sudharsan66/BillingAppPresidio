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
<body style="background-color:#262626; ">
<div class="w3-container " style=" padding:30px; background-color: #262626;">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary d-flex justify-content-between">
  <a class="navbar-brand" href="#">Online Store</a>
 <div >
    
   <a href="<c:url value='/logout' />"><button class="btn btn-danger">LOGOUT</button></a>
    
  </div>
</nav>
<br>
<a href="<c:url value='/admin' />"><button class="badge badge-pill badge-info"> Go Back</button></a>
<hr>
<br>
<div class="container">
<div align="center" style="color:#FFF;"> <h1>Click Here For generating Reports</h1></div>
<br><br><br>
<div align="center" style="color:#FFF;"><form action="admin/reports/dates" method="post">
	<input type="hidden" name="formid" value="report">
	<input type="date" name="fromdate" placeholder="from" required> TO 
	<input type="date" name="todate" placeholder="to" required>
	<input type="submit" value="Generate" class="btn btn-warning">
	</form></div>
</div>

</div>
</body>
</html>