<!DOCTYPE html>
<%@page import="com.iiit.view.User"%>
<html>
<head>
<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->

<link rel="stylesheet" href="engine/style.css"/>
<script src="engine/script.js"></script>
<link rel="icon" href="image/111.jpg"/>
</head>

<body>

<div id="mymiscdiv">
<%


try{
	if(session.getAttribute("user")!=null){
	
				String username=(String)session.getAttribute("user");
		out.println("<marquee>Welcome"+username+"</marquee>");
	}
}catch (Exception e){
	
}

%>
</div>
<div id="header">
<div id="logo"></div>
<div id="headtitle">Dream School</div>
<div id="subtitle">A new way to Join your Children</div>
<ul id="mymenu">
<li class="menuitem">
<a class="menulink" href="index.jsp">Home</a></li>
<%
try {
	if(session.getAttribute("user")!=null){
		%>
		 <li class="menuitem"><a class="menulink" href="logout.jsp">Logout</a></li>
         <li class="menuitem"><a class="menulink" href="elementary.jsp">Schools</a></li>
		
		<% 
	}
	else{
		%>
		<li class="menuitem"><a class="menulink" href="login.jsp">Login</a></li>
		<li class="menuitem"><a class="menulink" href="reg.jsp">Register</a></li>
		<%
		
	}
}catch (Exception e)
{
	%>
	<li class="menuitem"><a class= "menulink" href="login.jsp">Login</a></li>
		<li class="menuitem"><a class ="menulink" href="reg.jsp">Register</a></li>
	<%
}

%>
  <li class="menuitem"><a class="menulink" href="aboutus.jsp">About Us</a></li>
  <li class="menuitem"><a class="menulink" href="contactus.jsp">Contact Us</a></li>
  
</ul>



</div>
<div id="content">
