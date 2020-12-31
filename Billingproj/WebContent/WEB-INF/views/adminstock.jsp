<%@page import="com.model.ItemDTO"%>
<%@page import="com.service.ItemServiceImpl"%>
<%@page import="com.service.ItemService"%>
<%@page import="java.util.List"%>

<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Stocks</title>
<link rel="stylesheet" href="https://bootswatch.com/4/sandstone/bootstrap.min.css">
<style>
tbody{
background-color: #b3ecff;
}

table {
    border-collapse:separate;
    border:solid black 1px;
    border-radius:6px;
    -moz-border-radius:6px;background-color: #b3ecff;
}

td, th {
    border-left:solid black 1px;
    border-top:solid black 1px;
    padding: 8px;
text-align: center;
padding-top: 15px;
    
}

th {
   
    border-top: none;
}

td:first-child, th:first-child {
     border-left: none;
}
</style>
</head>

<body>
<div class="w3-container " style=" padding:30px; background-color: #262626;">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary d-flex justify-content-between">
  <a class="navbar-brand" href="#">Online Store</a>
 <div >
    
   <a href="<c:url value='/logout' />"><button class="btn btn-danger">LOGOUT</button></a>
    
  </div>
</nav>
<br>
<a href="<c:url value='/admin' />"><button class="badge badge-info badge-pill mt-3 ml-3"> Go Back</button></a>
<hr>
<br>
<div align="center" style="color: #FFF"><h1> Available Stocks</h1></div>
<br>
<table id="table-1" class="table table-hover">
	<thead>
		<tr>
			<th>Item No</th>
			<th>Item</th>
			<th>unit</th>
			<th>Price</th>
			<th>Shopid</th>
			<th>IMAGE</th>
			<th>Delete?</th>
		</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${itemsObj}" var="item">
            <tr class="table-light">
            <td><br><br>${item.itemno}</td>
            <td><br><br>${item.itemname}</td>
             <td><br><br>${item.unit}</td>
            <td><br><br>${item.price}</td>
            <td><br><br>${item.shopno}</td>
            <td><img src="data:image/jpg;base64,${item.base64Image}" width="100" height="100"></td>
            <td><br><br><a href="<c:url value='/item/delete-${item.itemno}' />"><button class="badge badge-pill badge-danger">X</button></a></td>
            </tr>
        </c:forEach>
	</tbody>
</table>
</div>
</body>
</html>