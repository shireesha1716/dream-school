<%@include file="header.jsp" %>
<script>
function validatePassword(){
	var np=document.getElementById('npwd').value;
	var cp=document.getElementById('cpwd').value;
	if(np===cp)
		return true;
	else{
		alert("Confirm Password doesn't match with new password!");
		return false;
	}
}
</script>	
<!--  <h1 align="center">Welcome</h1>-->
<h1 align="center"><u>CHANGE PASSWORD</u></h1>
<form method="post" action="changepass" onsubmit="return validatePassword();">

<table style="margin:0 auto">
<tr><td colspan=2><h2></h2></td>
<tr><td>Existing Password:</td>
<td><input type="password" name="epwd"  required="required"></td></tr><br><br>
<tr><td> New Password:</td>
<td><input type="password" name="npwd"  id="npwd" required="required"></td></tr><br><br>
<tr><td>Confirm Password:</td>
<td><input type="password" name="cpwd"  id="cpwd" required="required"></td></tr><br><br>
<tr><td colspan="2" align="center"><input type="submit" value="change"></td>
</td></tr>
</table>
</form>

<script>
<%
  try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("cpfld")){ 
		 
		%>
		alert("Existing password doesn't Match with the database!");
		<%
		
	 }
  }catch(Exception e){ }
  %>
</script>


<%@include file="footer.jsp" %>
