<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page</title>
<style>
body {
	background-image: url('pictures/firstpage.jpg');
	background-size: cover;
}

#logo {
	position: absolute;
	top: 8%;
	right: 57%;
	width: 180px;
	height: 180px;
	border-radius: 100%;
	border: 5px solid green;
}

#bankname {
	position: absolute;
	top: 4%;
	right: 15%;
	color: Green;
	font-size: 66px;
}

.box {
	position: absolute;
	top: 0%;
	right: 0%;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
	width: 720px;
	height: 700px;
	background-color: rgba(255, 255, 255, 0.8);
}

.buttons {
	font-family: arial, sans-serif;
	font-size: 46px;
	width: 800px;
	heigth: auto;
	background-color: black;
	color: white;
	text-decoration: none;
	border: 5px double green;
	border-radius: 40px;
	padding: 14px 10px;
	position: relative;
	top: 330px;
	left: 990px;
	transition: 0.35s;
}

.buttons:hover {
	background-color: #2ecc71;
}
</style>
</head>
<body>
	<div class="box">
		<img src="pictures/banklogo.png" id="logo">
		<h1 id="bankname">
			GLOBAL<br> BANK
		</h1>
	</div>
	<div class="container">
		<a class="buttons" href="Valid.jsp">&nbsp &nbsp &nbsp Employee
			&nbsp Login &nbsp &nbsp &nbsp </a><br>
		<br>
		<br>
		<br> <a class="buttons" href="login.jsp">&nbsp &nbsp
			&nbspCustomer &nbsp Login &nbsp &nbsp &nbsp &nbsp</a><br>
		<br>
		<br>
		<br> <a class="buttons" href="generatePin.jsp">&nbsp &nbsp &nbsp
			&nbsp &nbsp Create PIN &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </a>
	</div>
</body>
</html>