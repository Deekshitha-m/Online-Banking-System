<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deposit Amount</title>
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
top:23%;
left:34%;
background-color:black;
width:400px;
height:320px;
padding: 55px 40px;
border-radius:25px;
}
#value{
font-family: arial, sans-serif;
	font-size: 15px;
	width: 250px;
	heigth: 20px;
	background-color: white;
	color: black;
	text-decoration: none;
	border: 7px double #f7e520;
	border-radius: 40px;
	padding: 8px 10px;
	position: absolute;
	top:40%;
	left:20%;
}
#value3{
font-family: arial, sans-serif;
	font-size: 15px;
	width: 250px;
	heigth: 20px;
	background-color: white;
	color: black;
	text-decoration: none;
	border: 7px double #f7e520;
	border-radius: 40px;
	padding: 8px 10px;
	position: absolute;
	top:15%;
	left:20%;
}
#value2{
font-family: arial, sans-serif;
	font-size: 15px;
	width: 250px;
	heigth: 20px;
	background-color: white;
	color: black;
	text-decoration: none;
	border: 7px double #f7e520;
	border-radius: 40px;
	padding: 8px 10px;
	position: absolute;
	bottom:25%;
	left:21%;
}
#value1{

position:absolute;
bottom:9%;
left:38%;
background-color:lightblue;
color:black;
font-size:20px;
border: 1px solid lightblue;
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
top:28%;
left:25%;
}
#p1{
text-align:center;
color:white;
font-size:19px;
font-family: monospace;
position:absolute;
top:52%;
left:32%;
}
#p2{
text-align:center;
color:white;
font-size:19px;
font-family: sans-serif;
position:absolute;
top:4%;
left:30%;
}
  .ioo{
    width:550px;
    height:10px;
    color:green;
    background-color:white;
    border-radius:20px;
    position: absolute;
    top:110px;
    text-align:center;
    padding:15px;
    left:460px;
    
    }
   .ioo h3{
   display:inline;
   }
</style>
</head>
<body>
<header>
	<img src="pictures/banklogo.png" id="logo9">
<h1 id="welcome" >Deposit Amount</h1>
<a class="buttons" href="Customerhome.jsp">Main Menu </a>
</header>
<div class="container">

<form action="deposit" method="post">
<div id="log">
<%String error= (String) request.getAttribute("error");%>
	<%if(error!=null){ %>
	<div id="error-message" style="color:red;font-size:18px"><%=error %></div>
<%} %>
<br>
	
	<h3 id="p2">Account Number</h3>
	<input type="text" id="value3" name="ac" placeholder=" &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp Account Number" required>
	<br><br><br>
	<h3 id="p">Amount to be Deposited!</h3>
	<input type="text" id="value" name="am" placeholder=" &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp Enter Amount" required>
	<br><br><br>
	<p id="p1">Enter your PIN</p>
	<input type="password" id="value2" name="pn" placeholder="  &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp Enter Pin" required>
	<br><br><br>
	<button type="submit" id="value1">Submit</button>&nbsp;&nbsp;&nbsp;
	</div>
	</form>
		</div>
	<%String success=(String)request.getAttribute("str");%>
<%if(success!=null){ %>
<div class="ioo">
<h3><%=success%>
To see your account balance</h3>
<a href="Balance.jsp" id="bt">click here</a>
<%
}%>
	</div>
<footer>
<h5 id="line1">&copy;2023 GLOBAL BANK</h5>
</footer>
</body>
</html>