<%@include file="header.jsp" %>
<form method="post" action="accountdetails1">

<table style="margin:0 auto">
<tr><td colspan=2><h1>Account Details</h1></td></tr>
<tr><td>parent Account no.</td>
<td><input type="number" name="acnumber" placeholder="enter ur account no." required="required"></td></tr><br><br>
<tr><td>Password:</td>
<td><input type="password" name="pincode" placeholder="enter ur pincode"  required="required"></td></tr><br><br>
<tr><td colspan="2" align="center"><input type="submit" value="submit" class="menulink" style="margin-top:40px"></td>
<td><input type="reset" value="Reset" class="menulink" style="margin-top:40px">
<tr><td align="center">If you want to go back,<a href="join.jsp">Click Here</a><br>
<br>
<br>
</td></tr>
</table>
</form>
<script>
<%
  try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("jnscs")){ 
		 
		%>
		alert(" Joined Successfull!!");
		<%
		
	 }
	 if(msg.equals("sfld")){ 
		 
			%>
			alert("Either you have entered incorrect account details or pincode number");
			<%
			
		 }
	 
  }catch(Exception e){}
%>
</script>

<%@include file="footer.jsp" %>
