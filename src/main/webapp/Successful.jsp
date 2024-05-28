<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Added Successfully</title>
<style>
header{
	height:100px;
	background-color: #06d13c;
	color: white;
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
footer{
position: relative;
top:520px;
left:0px;
height:58px;
	background-color: #06d13c;
	color: white;
	text-align:center;
	font-size:20px;

}
#line1{
position:absolute;
bottom:0%;
left:45%;
}
.buttons{
position:absolute;
top:9%;
right:5%;
color:black;
font-size:20px;}

.buttons:hover{
color:white;}

#container{
position:absolute;
top:29%;
left:34%;
border:7px solid #06d13c;
background-color:white;
width:280px;
height:240px;
padding: 60px 90px;
color:#06d13c;
border-radius:25px;}
#logo8{
position: absolute;
top:3.5%;
left:20%;
width:250px;
heigth:175px;

border-radius:100%;
}
#done{
position:absolute;
bottom:5%;
left:37%;
font-size:40px;
align:center;}
</style>
</head>
<body>
<header>
	<img src="pictures/banklogo.png" id="logo9">
<h1 id="welcome" >SUCCESSFULL!</h1>
<a class="buttons" href="Employeehome.jsp">Main Menu </a>
</header>
</head>
<body>
<div id="container">
<h1 id="done">DONE</h1>
<img src="pictures/successlogo.png" id="logo8"></div>
<footer>
<h5 id="line1">&copy;2023 GLOBAL BANK</h5>
</footer>
</body>
</html>