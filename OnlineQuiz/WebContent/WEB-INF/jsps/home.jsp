<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">   
    <style type="text/css">
    
body {
	background: url("${pageContext.request.contextPath}/images/front.png");
	background-repeat: no-repeat;
	background-size: 100% 800px;
}

.button {
	padding: 10px 15px;
	font-size: 14px;
	line-height: 100%;
	text-shadow: 0 1px rgba(0, 0, 0, 0.4);
	color: #fff;
	
	vertical-align: middle;
	text-align: center;
	cursor: pointer;
	font-weight: bold;
	transition: background 0.1s ease-in-out;
	-webkit-transition: background 0.1s ease-in-out;
	-moz-transition: background 0.1s ease-in-out;
	-ms-transition: background 0.1s ease-in-out;
	-o-transition: background 0.1s ease-in-out;
	text-shadow: 0 1px rgba(0, 0, 0, 0.3);
	color: #fff;
	-webkit-border-radius: 40px;
	-moz-border-radius: 40px;
	border-radius: 40px;
	font-family: 'Helvetica Neue', Helvetica, sans-serif;
}

.button, .button:hover, .button:active {
	outline: 0 none;
	text-decoration: none;
        color: #fff;
}

.username {
	background-color: #2ecc71;
	box-shadow: 0px 3px 0px 0px #239a55;
}

</style>
  
   <title>Online Quiz</title>
</head>
<body>

<div id='cssmenu' style="margin-top:-10px;">
<ul>
   <li class=''><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
   <li class='#'><a href='${pageContext.request.contextPath}/admin' id="admin"><span>Submit a Question</span></a></li>
   <li><a href='#'><span>Contact us</span></a></li>
   <li style="margin-left:600px;" id="log"><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
   <li style="position:absolute;left:1300px"><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
</ul>
</div>

<c:if test='${not empty sessionScope.user}'>
<script type="text/javascript"> 
    document.getElementById("log").style.display = "none";  
    document.getElementById("admin").style.display = "none";  
</script> 
</script>
<style>
body {
	background: url("${pageContext.request.contextPath}/images/loginback.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
}

</style>


<div style="position:absolute;top:70px;left:1200px">
Logged as <a href="#" class="button username">${sessionScope.user}</a>
</div>

<div style="position:absolute;top:70px;left:1400px">
<a href='${pageContext.request.contextPath}/logout' class="button username">Logout</a>
</div>

<div style="position:absolute;left:300px;top:80px">
<table cellpadding="0" cellspacing="70">

<tr>
<td><a href="takeExam?test=java"><img height="200" width="200" src="${pageContext.request.contextPath}/images/java.png"/></a></td>
<td><a href="takeExam?test=dbms"><img height="200" width="200" src="${pageContext.request.contextPath}/images/dbms.png"/></a></td>
<td><a href="takeExam?test=python"><img height="200" width="200" src="${pageContext.request.contextPath}/images/python.jpg"/></a></td>
</tr>

<tr>
<td><a href="takeExam?test=css"><img height="200" width="200" src="${pageContext.request.contextPath}/images/css.jpg"/></a></td>
<td><a href="takeExam?test=iot"><img height="200" width="200" src="${pageContext.request.contextPath}/images/iot.png"/></a></td>
<td><a href="takeExam?test=c"><img height="200" width="200" src="${pageContext.request.contextPath}/images/c.png"/></a></td>
</tr>

</table>
</div>

</c:if>



</body>
</html>
