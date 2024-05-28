<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Pin Generation</title>
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
.container{
position:absolute;
top:24%;
left:30%;
background-color:rgba(0,0,0,0.9);
width:400px;
height:320px;
padding: 60px 90px;
border-radius:25px;
}

#value{
font-family: arial, sans-serif;
	font-size: 20px;
	width: 330px;
	heigth: auto;
	background-color: white;
	color: black;
	text-decoration: none;
	border: 7px double #f7e520;
	border-radius: 40px;
	padding: 7px 30px;
	position: relative;
}
footer{
position: relative;
top:521px;
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
#value1{

position:absolute;
bottom:4%;
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
.buttons{
position:absolute;
top:9%;
right:5%;
color:black;
font-size:20px;}
.buttons:hover{
color: red;}
#p{
text-align:center;
color:white;
font-size:19px;
font-family: monospace;
position:absolute;
bottom:85%;
left:21%;
}
#p1{
position:absolute;
top:32%;
left:20%;
color:white;
font-size:19px;
font-family: monospace;

}
#p2{
position:absolute;
top:55%;
left:20%;
color:white;
font-size:19px;
font-family:monospace;
}
</style>
</head>
<body>
<header>
	<img src="pictures/banklogo.png" id="logo9">
<h1 id="welcome" >Employee Password Generation</h1>
<a class="buttons" href="firstpage.jsp">Main Menu </a>
</header>

<form action="Egeneratepin" method="post">

<div class="container">
<div id="log">
<%String error= (String) request.getAttribute("error");%>
	<%if(error!=null){ %>
	<h3 id="error-message" style="color:red;font-size:18px"><%=error %></h3>
<%} %></div>

	<h3 id="p">Employee ID :</h3>
	<input type="text" id="value" name="id" placeholder=" &nbsp &nbsp &nbsp Enter Employee ID" required>
	<br><br><br><br>
	<p id="p1">Enter New Password :<p>
	<input type="password" id="value" name="np" placeholder="&nbsp &nbsp &nbsp New Password" required>
<br><br><br>
	<p id="p2">Confirm New Password :<p>
	<input type="password" id="value" name="cp" placeholder="&nbsp &nbsp &nbsp Confirm Password" required>
	<br>
	<button type="submit" id="value1">Submit</button>&nbsp;&nbsp;&nbsp;
	<br>
	</div>
</form>

<footer>
<h5 id="line1">&copy;2023 GLOBAL BANK</h5>
</footer>
</body>
</html>