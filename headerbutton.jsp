<!DOCTYPE html>
<!-- %@page import="com.iiit.view.User"%-->
<html>
<head>
<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine2/style.css" />
<script type="text/javascript" src="engine2/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
<title>Insert title here</title>
<link rel="stylesheet" href="engine/style.css"/>
<script src="engine/script.js"></script>
<link rel="icon" href="images/logo1.png"/>
</head>
<body>

<div id="mymiscdiv">
<%
	String login="";

	try{
			login=session.getAttribute("login").toString();
	//		if(login.equals("true"))
	//		{
//				u1=(User)session.getAttribute("user");
//				out.println("<marquee>Welcome : "+u1.getUsername()+"</marquee>");
//			}
					
					
	}catch(Exception e)
	{
		login="";
	}

%>


Welcome to my Website </div>
<div id="header">
<div id="logo" ></div>
	

	<div id="headtitle"> Dream School</div>
	<div id="subtitle"> A place for innovative thoughts</div>
	<ul id="mymenu">
		<li class="menuitem"> <a href="reg1.jsp" class="menulink">Visit Our Website</a></li>
	</ul>
</div>


<div id="content">