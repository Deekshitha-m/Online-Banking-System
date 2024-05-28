<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Balance</title>
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
top:35%;
left:25%;
background-color:black;
width:650px;
height:170px;
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
bottom:75%;
left:35%;
}
#p1{
color:white;
}
.data{
position:absolute;
left:15%;}
table,th,td{

width:610px;
border:2px solid white;
color:white;}
th{
color:yellow;
font-size:24px;
height:50px;
width:120px;}
</style>
</head>
<body>
<body>
<header>
	<img src="pictures/banklogo.png" id="logo9">
<h1 id="welcome" >Balance Details</h1>
<a class="buttons" href="Customerhome.jsp">Main Menu </a>
</header>
<div class="container">
<h3 id="p">ACCOUNT DETAILS!</h3>
<br>
<br>
<table>
<tr>
<th> Account Number</th><th>Name</th><th>Balance</th>
</tr>
<tr>
<td><%int acc=(Integer)request.getAttribute("AccNum"); %>
<h2 id="p1" >&nbsp &nbsp &nbsp &nbsp &nbsp<%= acc %></h2></td>
<td><%String name=(String)request.getAttribute("Sname"); %>
<h2 id="p1" >&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<%= name %></h2></td>
<td><%double bal=(Double)request.getAttribute("Balance"); %>
<h2 id="p1" > &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <%= bal %></h2></td>
</tr>
</table>

</div>
<footer>
<h5 id="line1">&copy;2023 GLOBAL BANK</h5>
</footer>
</body>
</html>
</body>
</html>