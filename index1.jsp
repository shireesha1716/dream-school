<%@include file="header1.jsp" %>
<!-- Start WOWSlider.com BODY section -->
<br><br><br>
<form><center>
<li class="menuitem"><a class="menulink" href="index.jsp">View Our Website</a></li>
</center></form>

<script>
<%
  try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("loscs")){ 
		 %>
		 
		 //out.println("alert(\"You have logged out from your account successfully!\")");
		  alert("You have logged out Successfully!");
		<%
	 }
  }catch(Exception e){}
%>
</script>
<%@include file="footer.jsp" %>
