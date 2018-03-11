<%@include file="header.jsp" %>
<script>
function getU(){
	var x=prompt("enter email id registered with your account!");
	var servPath="forgot?id="+x;
    window.location.assign(servPath);
}


</script>

<form method="post" action="login1">

<table style="margin:0 auto">
<tr><td colspan=2><h1>USer Login</h1></td></tr>
<tr><td>User Id: </td>
<td><input type="email" name="email" placeholder="enter ur email" required="required"></td></tr><br><br>
<tr><td>Password:</td>
<td><input type="password" name="password" placeholder="enter ur password"  required="required"></td></tr><br><br>
<!--<tr><td>status</td><td><input type="hidden" value="activate" name="status"></td></tr>-->
<tr><td colspan="1" align="center"><input type="submit" value="Login" class="menulink" style="margin-top:40px">
<input type="reset" value="Reset" class="menulink" style="margin-top:40px">
<tr><td align="center">Not a member,<a href="reg.jsp">Click Here</a><br>
<br>
<br>
<a class="menulink" style="margin-top:40px" onclick="getU();">Forgot Password</a>
</td></tr>
</table>
</form>
<script>
<%
try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("rgscs")){ 
		 
		%>
		alert("Account registered Successfully!");
		<%
		
	 }
	 if(msg.equals("lfld")){ 
		 
			%>
			alert("Either you have entered incorrect user details or you haven't verified your account!");
			<%
			
		 }

	 if(msg.equals("fpid")){ 
		 
			%>
			alert("Email id does not exists in our database!");
			<%
			
		 }
	 if(msg.equals("fpmail")){ 
		 
			%>
			alert("Unable to send mail due to server issue,you can try agin later!");
			<%
			
		 }
	 if(msg.equals("fpscs")){ 
		 
			%>
			alert("Your new password has been sent to your registered mail account!");
			<%
			
		 }
}catch(Exception e){}
%>
</script>
<%@include file="footer.jsp" %>
