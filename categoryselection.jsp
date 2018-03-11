<%@page import="java.io.File"%>
<%@include file="header.jsp" %>
<html>
<body>

<form method="post" action="login1">

<table style="margin:0 auto">
<tr><td colspan=2><h1>Please choose one category</h1></td></tr><br><br><br>
<tr><td>Elementary Schools</td>
<td>Middle Schools</td>
<td>High Schools</td></tr>
<tr>
<td><a href="elementary.jsp"><img src="image/1.jpg" width="150px" height="180px"/></a></td>
<td><a href="middle.jsp"><img src="image/2.jpg" width="150px" height="180px"/></a></td>
<td><a href="high.jsp"><img src="image/3.jpg" width="150px" height="180px"/></a></td>
</tr>
</table>
</form>
</body>
</html>
<script>
<%
  try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("lgscs")){ 
		 
		%>
		alert("Logged in Successfull!!");
		<%
		
	 }
	 if(msg.equals("cpscs")){ 
		 
			%>
			alert("Password Changed successfully!");
			<%
			
		 }
  }catch(Exception e){}
%>
</script>



<%@include file="footer.jsp" %>
