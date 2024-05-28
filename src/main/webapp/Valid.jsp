<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
<style>
#logo{
position:absolute;
top:1.8%;
left:5%;
width:108px;
heigth:105px;
border: 3px solid green;
border-radius:100%;
}
header{
height:120px;
	background-color: #f7e520;
	color:green;
	text-align:center;
}
footer{
position: relative;
top:480px;
left:0px;
height:80px;
	background-color: #f7e520;
	color:green;
	text-align:center;
	font-size:20px;
}
#line{
position:absolute;
top:3%;
left:40%;
font-size:40px;}
#line1{
position:absolute;
bottom:3%;
left:45%;
}
#empimg{
position:absolute;
top:27%;
left:5%;
width:380px;
height:380px;}

#log{
position:absolute;
top:35%;
left:50%;
}
#btn{
font-family: arial, sans-serif;
color:grey;
	font-size: 20px;
	padding: 14px 26px;
	border: 5px double #f7e520;
	border-radius:5px;}
	#btn:hover{
	border: 5px double green;
	}
#btn1{
background-color:#f7e520;
padding: 10px 10px;
color:green;
width:120px;
height:50px;
border:2px #f7e520;
border-radius:25px;
font-size:25px;}

#btn1:hover{
background-color:#2ecc71}

#btn2{
position:absolute;
top:230px;
left:170px;
font-size:20px;}
#btn2:hover{
color:red;"}
</style>
</head>
<body>
<header>
	<div class="box">
		<img src="pictures/banklogo.png" id="logo">
<h2 id="line" >EMPLOYEE LOGIN</h2></div></header>
<img src="pictures/employee.jpg" id=empimg>
<form action="emplogin" method="post">
<div id="log">
<%String error= (String) request.getAttribute("error");%>
	<%if(error!=null){ %>
	<div id="error-message" style="color:red;font-size:18px"><%=error %></div>
<%} %>
<br>
	<input type="text" id="btn" name="id" placeholder="Enter the Employee ID" required>
	<br>
	<br>
	<br>
	<input type="password" id="btn" name="password" placeholder="Enter your Password" required>
	<br>
	<br>
	<br>
	<button type="submit" id="btn1" >Login</button> 
	<a href="EgeneratePin.jsp" id="btn2"> FORGOT PIN?</a>
	<br>
	</div>
</form>
<footer>
<h5 id="line1">&copy;2023 GLOBAL BANK</h5>
</footer>
</body>
</html>