<%@page import="java.io.File"%>
<%@include file="header1.jsp" %>




<table style="margin:0 auto">
<tr><td colspan=2><h1>USer Login</h1></td></tr>

</table>


<script>
<%
  try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("logscs")){ 
		 
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
