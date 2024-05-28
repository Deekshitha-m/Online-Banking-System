<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
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
.buttons{
position:absolute;
top:9%;
right:5%;
color:black;
font-size:20px;}
.container{
position:absolute;
top:25%;
left:28%;
background-color:black;
width:550px;
height:270px;
padding: 55px 55px;
border-radius:25px;
}
#value{
font-family: arial, sans-serif;
	font-size: 20px;
	width: 350px;
	heigth: auto;
	background-color: white;
	color: black;
	text-decoration: none;
	border: 7px double #f7e520;
	border-radius: 40px;
	padding: 16px 10px;
	position: absolute;
	bottom:41%;
	left:17%;
}
#value1{

position:absolute;
bottom:12%;
left:38%;
background-color:white;
color:black;
font-size:20px;
border: 4px solid #2ecc71;
padding:8px 8px;
width:100px;}
#value1:hover{
background-color: #2ecc71;
}
#p{
text-align:center;
color:lightgreen;
font-size:19px;
font-family:sans-serif;
position:absolute;
bottom:80%;
left:35%;
}
#p1{
color:white;
}
.data{
position:absolute;
left:15%;}
</style>
</head>
<body>
<header>
	<img src="pictures/banklogo.png" id="logo9">
<h1 id="welcome" >View Customer Details</h1>
<a class="buttons" href="Customerhome.jsp">Main Menu </a>
</header>
<div class="container">
<h3 id="p">ACCOUNT DETAILS!</h3>
<br>
<br>
<div class="data">
<%int acc=(Integer)request.getAttribute("A"); %>
<h3 id="p1" >ACCOUNT NUMBER : &nbsp &nbsp &nbsp &nbsp<%= acc %></h3>
<%String name=(String)request.getAttribute("N"); %>
<h3 id="p1" >CUSTOMER NAME : &nbsp &nbsp &nbsp &nbsp &nbsp<%= name %></h3>
<%long phn=(Long)request.getAttribute("P"); %>
<h3 id="p1" >PHONE NUMBER : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<%= phn %></h3>
<%String mail=(String)request.getAttribute("M"); %>
<h3 id="p1" >E-MAIL : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <%= mail %></h3>
<%double bal=(Double)request.getAttribute("B"); %>
<h3 id="p1" >BALANCE :&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <%= bal %></h3>
</div>
</div>
<footer>
<h5 id="line1">&copy;2023 GLOBAL BANK</h5>
</footer>
</body>
</html>