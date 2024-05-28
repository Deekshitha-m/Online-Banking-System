<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
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
left:50%;
background-color:rgba(0,0,0,0.9);
width:400px;
height:280px;
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
bottom:0%;
left:45%;
}
#value1{

position:absolute;
bottom:7%;
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
font-family:sans-serif;
position:absolute;
bottom:85%;
left:33%;
}
.container1{
position:absolute;
top:35%;
left:4%;
background-color:black;
width:400px;
height:100px;
padding: 55px 55px;
border-radius:25px;
}
#value2{
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
	bottom:23%;
	left:12%;
}
#p1{
text-align:center;
color:white;
font-size:19px;
font-family:sans-serif;
position:absolute;
bottom:69%;
left:28%;
}
#log{
position:absolute;
top:20%;
left:20%;
}
</style>
</head>
<body>
<header>
	<img src="pictures/banklogo.png" id="logo9">
<h1 id="welcome" >Update Customer Details</h1>
<a class="buttons" href="Employeehome.jsp">Main Menu </a>
</header>
<form action="updatecustomer" method="post">

<div class="container1">
<div id="log">
<%String error= (String) request.getAttribute("error");%>
	<%if(error!=null){ %>
	<h3 id="error-message" style="color:red;font-size:18px"><%=error %></h3>
<%} %></div>
	<h3 id="p1">ACCOUNT DETAILS!</h3>
	<input type="text" id="value2" name="ac" placeholder=" &nbsp &nbsp &nbsp Enter Account Number" required>
	</div>
<div class="container">
	<h3 id="p">UPDATE DETAILS!</h3>
	<input type="text" id="value" name="nm" placeholder=" &nbsp &nbsp &nbsp Enter Updated Name" required>
	<br><br><br>
	<input type="text" id="value" name="ph" placeholder="&nbsp &nbsp &nbsp Enter Updated Phone Number" required>
	<br><br><br>
	<input type="text" id="value" name="em" placeholder="&nbsp &nbsp &nbsp Enter Updated Email ID" required>
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