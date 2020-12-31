
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://bootswatch.com/4/sandstone/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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


<body style="background-color: #262626;">
<div class="w3-container " style=" padding:30px; background-color: #262626;">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary d-flex justify-content-between">
  <a class="navbar-brand" href="#">Online Store</a>
 <div >
    
   <a href="<c:url value='/logout' />"><button class="btn btn-danger">LOGOUT</button></a>
    
  </div>
</nav>
<hr>
	<a href="<c:url value='/welcome' />"><button class="badge badge-pill badge-info">Go Back</button></a>
<hr>
	<div align="center" style="color:#FFF"><h1> Ration Shop<br></h1></div>
	<form action="shop-111" method="post" >
	<!-- <input type="hidden" name="formid" value="shop">
	<input type="hidden" name="shopid" value="shop1"> -->

	<div class="table-responsive">
<table id="table-1" class="table table-hover">
	<thead>
		<tr>
			<th>Item No</th>
			<th>Item</th>
			<th>unit</th>
			<th>Price</th>
			<th>Shopid</th>
			<th>Image</th>
			<th>Quantity</th>
			<th>Add To cart</th>
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
            <td><br><br><select name="quantity"><option>1</option><option>2</option><option>3</option><option>4</option></select></td>
            <td ><br><br><input type="checkbox" name="${item.itemname}" value="${item.itemno}"></td>
            </tr>
        </c:forEach>
	</tbody>
</table>
</div>
		<div align="right"><input type="submit" value="NextShop.." class="btn btn-warning"></div>
	</form>
	</div>
</body>
</html>