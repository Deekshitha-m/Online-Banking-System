<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PIN Generate</title>
<style>
header{
	height:100px;
	background-color: #f5ed05;
	color:green;
	text-align:center;
	padding: 0.1px 10px;
	

}
#logo9{
position: absolute;
top:1.5%;
left:7%;
width:91px;
heigth:81px;
border: 3px solid green;
border-radius:100%;
}

#welcome{
position: relative;
font-size:40px;
top:0%;
right:0%;
}
.buttons5{
position:absolute;
top:9%;
right:5%;
color:black;
font-size:20px;}
.buttons5:hover{
color: red;}
footer{
position: relative;
top:520px;
left:0px;
height:58px;
	background-color: #f7e520;
	color:green;
	text-align:center;
	font-size:20px;

}
#line1{
position:absolute;
top:0%;
left:45%;
}
.container{
	width: 400px;
	heigth: 800px;;
	background-color: #2ecc71;
color:white;
position:absolute;
top:40%;
left:15%;
border-radius:25px;
}
.container:hover{
background-color: black;
border:5px solid #2ecc71;}
.container1{
	width: 400px;
	heigth: 800px;;
	background-color: red;
color:white;
position:absolute;
top:40%;
left:58%;
border-radius:25px;
}
.container1:hover{
background-color: black;
border:5px solid red;}


.buttons {
	font-family: arial, sans-serif;
	font-size: 50px;
	width: 450px;
	heigth: auto;
	color: white;
	text-decoration: none;
	padding: 14px 10px;
	
	transition: 0.35s;
}
.buttons1 {
	font-family: arial, sans-serif;
	font-size: 50px;
	width: 450px;
	heigth: auto;
	color: white;
	text-decoration: none;
	padding: 14px 10px;
	
	transition: 0.35s;
}

</style>
</head>
<body>
<header>
	<img src="pictures/banklogo.png" id="logo9">
<h1 id="welcome" > PIN Generation</h1>
<a class="buttons5" href="firstpage.jsp">Main Menu </a>
</header>
<div class="container">
<br><br>
		<a class="buttons" href="CgeneratePin.jsp">&nbsp &nbsp &nbsp Customer
			<br>&nbsp PIN Generation &nbsp &nbsp &nbsp </a><br>
		<br>
		<br></div>
		
		
		<div class="container1">
		<br>
		<br>
		 <a class="buttons1" href="EgeneratePin.jsp">&nbsp &nbsp
			&nbsp Employee<br> &nbsp PIN Generation &nbsp &nbsp &nbsp &nbsp</a><br>
		<br>
		<br></div>
<footer>
<h5 id="line1">&copy;2023 GLOBAL BANK</h5>
</footer>
</body>
</html>