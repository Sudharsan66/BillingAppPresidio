<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://bootswatch.com/4/sandstone/bootstrap.min.css">
<style>
$primary = #0077FF
 box-sizing: border-box
  
.inp
  position: relative
  margin: auto
  width: 100%
  max-width: 280px
  height: 53px
  .border
    position: absolute
    left: 0
    bottom: 0
    height: 18px
    fill: none
    path
      stroke: #C8CCD4
      stroke-width: 2
      d
        transition: all .2s ease
  .check
    position: absolute
    top: 20px
    right: 20px
    fill: none
    transform: translate(0,9px) scale(0)
    transition: all .3s cubic-bezier(.5, .9, .25, 1.3)
    transition-delay: .15s
    path
      stroke: $primary
      stroke-width: 2 

  input
    -webkit-appearance: none
    width: 100%
    border: 0
    font-family: inherit
    padding: 0
    height: 48px
    font-size: 16px
    font-weight: 500
    background: none
    border-radius: 0
    color: #223254
    transition: all .15s ease
    &:focus
      outline: none
      + .border path
        stroke: $primary
        
::placeholder
  color: #9098A9;
</style>
</head>
<body style="background-color: #262626;">
<div class="w3-container " style=" padding:30px; background-color: #262626;">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary d-flex justify-content-between">
  <a class="navbar-brand" href="#">Online Store</a>
</nav>
<a href="<c:url value="/login"/>"><button class="badge badge-pill badge-info m-2 p-1">Back</button></a>
<hr>
<div class="container" style="color:#FFF">
<h1>Register page...</h1>
	<h2>Administration Registration.....</h2>
		<form method="post" action="register/admin">
	<input type="hidden" name="formid" value="register">
	<div align="center">UserName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="inp" name="uname" placeholder="username"  class="form-control-sm mt-1" required><br><br></div>
	<br><div align="center">PassWord:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="inp" type="password" name="upass" placeholder="password" class="form-control-sm mt-1" required><br><br></div>
	<br><div align="center">Secret Code:&nbsp;<input type="text" id="inp" name="secret" placeholder="code" class="form-control-sm mt-1" required><br><br></div>
	<br><div align="center"><input type="submit" value="Signup" class="btn btn-warning mt-2"></div>
		
	
	</form>
	</div>
	</div>
</body>
</html>