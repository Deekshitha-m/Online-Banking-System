<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Interface</title>
<style>
#home{
position: absolute;
left:2%;
bottom:10%;
width:620px;
height:390px;}
.box{
position:absolute;
top:48%;
right:1%;
background-color:rgba(150, 150, 147,0.8);
color:white;
font-size:20px;
padding:2px 30px;
}
</style>
</head>
<body>
<%@include file="header.jsp"%>
<%@include file="empNav.jsp"%>
<img src="pictures/homelogo.jpg" id=home>
<main>

<div class="box">
<h3>About us :</h3>
<p>Global Bank is an Indian banking and financial services company headquartered in Bangalore. 
It is India's largest private sector <br> bank by assets and the world's fifth largest bank by market capitalisation as of August 2023 ,
  following it's take over of parent <br>company Global. It is the third largest company(as of 6th September 2023) by market capitalisation of $150 billion on the Indian<br>
  stock exchanges.It is also the sixteenth largest employer in India with nearly 1.73 lakh employees.Global Bank provides a number<br> of products and services including wholesale banking, retail banking, treasury, auto loans, two-wheeler loans, personal loans, <br>
  loans against property, consumer durable loan, lifestyle loan and credit cards.
   Along with this various digital products are Payzapp <br> and SmartBUY.</p>
  </div>
</main>
<%@include file="footer.jsp"%>
</body>
</html>