<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Data</title>
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
left:34%;
background-color:black;
width:450px;
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
color:white;
font-size:19px;
font-family:sans-serif;
position:absolute;
bottom:72%;
left:35%;
}
#log{
position:absolute;
bottom:69%;
left:24%;
}
</style>
</head>
<body>
<header>
	<img src="pictures/banklogo.png" id="logo9">
<h1 id="welcome" >View Customer Details</h1>
<a class="buttons" href="Employeehome.jsp">Main Menu </a>
</header>
<div class="container">

<form action="view" method="get">
<div id="log">
<%String error= (String) request.getAttribute("error");%>
	<%if(error!=null){ %>
	<div id="error-message" style="color:red;font-size:18px"><%=error %></div>
<%} %></div>
	<h3 id="p">GET DETAILS!</h3>

	<input type="text" id="value" name="nm" placeholder=" &nbsp &nbsp &nbsp Enter Account Number" required>
	<br><br><br>
	<button type="submit" id="value1">Submit</button>&nbsp;&nbsp;&nbsp;
	</form>
	</div>
<footer>
<h5 id="line1">&copy;2023 GLOBAL BANK</h5>
</footer>
</body>
</html>