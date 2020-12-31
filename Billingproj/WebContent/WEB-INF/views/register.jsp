<%@page import="com.pojo.ActionMsg"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.pojo.ActionMsgs"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegisterPage</title>
<link rel="stylesheet" href="https://bootswatch.com/4/sandstone/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<style>

$full:100%;
$auto:0 auto;
$align:center;

@mixin disable{
  outline:none;
  border:none;
}

@mixin easeme{
  -webkit-transition:1s ease;
  -moz-transition:1s ease;
  -o-transition:1s ease;
  -ms-transition:1s ease;
  transition:1s ease;
}

/*site container*/
.wrapper{
  width:420px;
  margin:$auto;
}

h1{
  text-align:$align;
  padding:30px 0px 0px 0px;
  font:25px Oswald;
  color:#FFF;
  text-transform:uppercase;
  text-shadow:#000 0px 1px 5px;
  margin:0px;
}

p{
  font:13px Open Sans;
  color:#6E6E6E;
  text-shadow:#000 0px 1px 5px;
  margin-bottom:30px;
}

.form{
  width:$full;
}

input[type="text"],input[type="password"]{
  width:98%;
  padding:15px 0px 15px 8px;
  border-radius:5px;
  box-shadow:inset 4px 6px 10px -4px rgba(0,0,0,0.3), 0 1px 1px -1px rgba(255,255,255,0.3);
	background:rgba(0,0,0,0.2);
  @include disable;
  border:1px solid rgba(0,0,0,1);
  margin-bottom:10px;
  color:#6E6E6E;
  text-shadow:#000 0px 1px 5px;
}

input[type="submit"]{
  width:100%;
  padding:15px;
  border-radius:5px;
  @include disable;
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#28D2DE), to(#1A878F));
  background-image: -webkit-linear-gradient(#28D2DE 0%, #1A878F 100%);
  background-image: -moz-linear-gradient(#28D2DE 0%, #1A878F 100%);
  background-image: -o-linear-gradient(#28D2DE 0%, #1A878F 100%);
  background-image: linear-gradient(#28D2DE 0%, #1A878F 100%);
  font:14px Oswald;
  color:#FFF;
  text-transform:uppercase;
  text-shadow:#000 0px 1px 5px;
  border:1px solid #000;
  opacity:0.7;
	-webkit-box-shadow: 0 8px 6px -6px rgba(0,0,0,0.7);
  -moz-box-shadow: 0 8px 6px -6px rgba(0,0,0,0.7);
	box-shadow: 0 8px 6px -6px rgba(0,0,0,0.7);
  border-top:1px solid rgba(255,255,255,0.8)!important;
  -webkit-box-reflect: below 0px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(50%, transparent), to(rgba(255,255,255,0.2)));
}

input:focus{
  box-shadow:inset 4px 6px 10px -4px rgba(0,0,0,0.7), 0 1px 1px -1px rgba(255,255,255,0.3);
  background:rgba(0,0,0,0.3);
  @include easeme;
}

input[type="submit"]:hover{
  opacity:1;
  cursor:pointer;
}

.name-help,.email-help{
  display:none;
  padding:0px;
  margin:0px 0px 15px 0px;
}

.optimize{
  position:fixed;
  right:3%;
  top:0px;
}

</style>
</head>
<%
	ActionMsgs errors = (ActionMsgs) request.getAttribute("errors");
%>
<body style="background-color: #262626;">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary d-flex justify-content-between">
  <a class="navbar-brand" href="#">Online Store</a>
</nav>
<a href="<c:url value="/login"/>"><button class="badge badge-info m-2 p-1">Back</button></a>
<hr>
<div align="center">
<div class="wrapper" >
<h1>Register page...</h1>
<br>
	<div style="color:#FFF"><h2>Please Register Here.....</h2></div>
	<br>
		<!--  <form method="post" action="register/user">
	<input type="hidden" name="formid" value="register">
	<div align="center">UserName:<input type="text" name="uname" placeholder="username" class="form-control-sm mt-1" required><br><br></div>
	
	<div align="center">PassWord:<input type="password" name="upass" placeholder="password" class="form-control-sm mt-1" required><br><br></div>
	<div align="center">User city: <input type="text" name="ucity" placeholder="city" class="form-control-sm mt-1" required><br><br></div>
		
		
		
		<div align="center"><input type="submit" value="Signup" class="btn btn-success mt-2"></div>
	
	</form>-->
	 <form class="form" method="post" action="register/user">
    <input type="text" class="name" placeholder="Name" name="uname" required>
  
    <input type="password" class="name" placeholder="Password" name="upass" required>
     
     <input type="text" class="name" placeholder="City" name="ucity" required>
    
    <input type="submit" class="submit" value="Register">
  </form>

	<br>
	<%

if(errors!=null){
	Iterator<ActionMsg> iter = errors.getErrors().iterator();
	while(iter.hasNext()){
		
%>		
		<p class="badge badge-danger">  <%=iter.next().getMsg()%> <p>
<%	} 
 }
%>
</div>
</div>	
</body>
</html>