<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style >header{
	height:100px;
	background-color: #f5ed05;
	color:green;
	text-align:center;
	padding: 0.1px 10px;
	

}
#logo9{
position: absolute;
top:1%;
left:7%;
width:93px;
heigth:83px;
border: 3px solid green;
border-radius:100%;
}

#welcome{
position: relative;
font-size:40px;
top:0%;
right:2%;
}
.lo{
position: absolute;
top:6%;
right:6%;
text-decoration:none;
border-radius:20%;
background-color:white;
color:green;
font-size:20px;
border: 3px solid green;
padding:10px 10px;
cursor:pointer;

}
.lo:hover{
background-color:orange;}
</style>
</head>
<body>
<header>
<%String name=(String)request.getAttribute("name"); %>
	<img src="pictures/banklogo.png" id="logo9">
<a href="firstpage.jsp" class="lo">Logout</a>
<h1 id="welcome" >Welcome &nbsp <%= name %></h1>
</header>
</body>
</html>