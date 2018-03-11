<%@include file="header.jsp" %>
<form method="post"  action="register">
<table style="margin:0 auto">
<tr><td colspan=1><h1>Registration</h1></td>
<tr><td>EmailId:</td><td><input type="email" name="email" required="required"></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" required="required"></td></tr>
<tr><td>Parent Name:</td>
<td><input type="text" name="username" required="required"></td></tr>
<tr><td>Contact:</td><td><input type="number" name="contact" required="required"></td></tr>
<tr><td>Gender:</td>
 <td>male<input type="radio" name="gender" checked="checked" value="male"> 
 female<input type="radio" name="gender" value="female"></td></tr>
<tr><td>State:</td><td><select name="state" required="required">
<option value=""> Select Your State</option>
<option>Telangana</option>
<option>Andrapradesh</option>
<option>Maharashta</option>
<option>Karnataka</option>
<option>Thamilnadu</option>
<option>Madhyapradesh</option>
<option>kerala</option>
<option>paschima Bengal</option>
</select></td></tr>
<tr><td>District:</td><td><select name="district" required="required">
<option value=""> Select Your District</option>
<option>Karimnagar</option>
<option>RajannaSiricilla</option>
<option>Medhak</option>
<option>Siddipeta</option>
<option>Jagithyala</option>
<option>Hyderabad</option>
<option>Nizamabad</option>
<option>rangareddy</option>
<option>Mahabub nagar</option>
<option>warangal</option>
<option>Nalgonda</option>
<option>peddapalli</option>
<option>Janagam</option>
<option>sangareddi</option>
<option>Hanmakonda</option>
<option>kamareddy</option>
</select></td></tr>
 <tr><td>usertype:</td><td><input type="hidden" value="1" name="usertype"></td></tr>
<tr><td><input type="submit" value="Register" class="menulink" style="margin-top:40px">
<td><input type="reset" value="Clear form" class="menulink" style="margin-top:40px">
</tr>
<tr>
<td>
Already registered,<a href="login.jsp"  style="text-decoration:none"> click here</a>
</td>
</tr>


</table>
</form>

<script>
<%
try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("rgfld")){  
		%>
		alert("Please try again!");
		<%
	 }
	 if(msg.equals("rgexists")){ 
		%>
		alert("Please choose another ID, as the ID is already registered with another account!");
		<%
	 }
}catch(Exception e){}
%>
</script>
<%@include file="footer.jsp" %>