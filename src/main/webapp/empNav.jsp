<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.nav{
background-color: #d9dedb;
height:65px;
position:relative;
top:0px;}

#one{
position:absolute;
left:22%;
top:24%;
text-decoration:none;
color: black;
font-size:22px;
}
#one:hover{
color: #e60707;
}
#two{
position:absolute;
left:30%;
font-size:22px;
top:24%;
text-decoration:none;
color: black;
}
#two:hover{
color: #e60707;
}
#three{
position:absolute;
left:43%;
top:24%;
text-decoration:none;
color: black;
font-size:22px;
}
#three:hover{
color: #e60707;
}
#four{
position:absolute;
left:58%;
top:24%;
font-size:22px;
text-decoration:none;
color: black;
}
#four:hover{
color: #e60707;
}
#five{
position:absolute;
left:70%;
top:24%;
text-decoration:none;
color: black;
font-size:22px;
}
#five:hover{
color: #e60707;
}
#six{
position:absolute;
left:81%;
top:24%;
text-decoration:none;
color: black;
font-size:22px;
}
#six:hover{
color: #e60707;
}
.scrolling{
color:red;
font-family:sans-serif;
}
</style>
</head>
<body>
<nav>
<div class="nav">
		<a href="Employeehome.jsp" id="one">Home</a>
		<a href="addCustomer.jsp"id="two">Add Customer</a>
		<a href="removeCustomer.jsp"id="three">Remove Customer</a>
		<a href="UpdateCustomer.jsp" id="four">Update Data</a>
		<a href="ViewData.jsp"id="five">View Data</a>
		<a href="#"id="six">Help</a>	
</div>
</nav>
<div class="scrolling">
<br>
<marquee behavior="scroll" direction="left" scrollamount=15;> Any changes in KYC details of existing customers the same shall be updated by the customers within 30 days of the update to the documents for the purpose of updating the bank record | Important announcement to physical shareholders.|
</marquee>
</div>
</body>
</html>