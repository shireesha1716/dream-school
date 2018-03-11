<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.io.File,java.sql.*"%>
<%@include file="header.jsp"%>	

	<table style="margin: 0 auto">
	<%
Connection cn=null;
try{
cn=DBMan.getConnection();
PreparedStatement ps=cn.prepareStatement("select * from register");
ResultSet rs=ps.executeQuery();
String emailid=(String)session.getAttribute("user");
if(rs.next()){
	session.setAttribute("user", emailid);%>
	<form method="post"  action="join2">
		<tr>
			<td colspan=1><h1>Join Into School</h1></td>
		<tr>
			<td>Student Name:</td>
			<td><input type="text" name="sname" required="required"></td>
		</tr>

		<tr>
			<td>Parent Name:</td>
			<td><input type="text" name="pname" required="required"></td>
		</tr>

		<tr>
			<td>Gender:</td>
			<td>male<input type="radio" name="gender" value="male">
				female<input type="radio" name="gender" value="female">
				other<input type="radio" name="gender" value="other"></td>
		</tr>
		<tr><td>Age:</td>
<td><input type="number" name="age" min="3" max="19" required="required"></td></tr><br><br>
<tr><td>Date Of Birth:</td>
<td><input type="date" name="dob" required="required"></td></tr><br><br>
<tr><td>Contact:</td>
<td><input type="number" name="contact" required="required"></td></tr>
<tr><td>Address:</td>
<tr><td>Address:</td>
<td><textarea type="text" name="address" required="required" width="40" height="50"></textarea></td></tr>
		<tr>

		<tr>
			<td>Respected class:</td>
			<td><select name="class2">
					<option value="">Select class in which you wants to join</option>
					<option>Nursery</option>
					<option>L.K.G</option>
					<option>U.K.G</option>
					<option>1st</option>
					<option>2nd</option>
					<option>3rd</option>
					<option>4th</option>
					<option>5th</option>
					<option>6th</option>
					<option>7th</option>
					<option>8th</option>
					<option>9th</option>
					<option>10th</option>
			</select></td>
		</tr>

		<tr>
			<td>Accommodation Facility:</td>
			<td>Hostel<input type="radio" name="accommodation"
				value="hostel"> Home<input type="radio" name="accommodation"
				value="home">
			</td>
		</tr>
		<tr>
			<td>Vehicle facility:</td>
			<td>By School Bus<input type="radio" name="vehicle"
				value="schoolbus"> By personal Vehicle<input type="radio"
				name="vehicle" value="personalvehicle">
			</td>
		</tr>
<tr><td>EmailId:</td>
<td><input type="text"  name="email" value="<%=emailid%>" readonly="readonly" ></td></tr>
		<!-- form action="#" onsubmit="if(document.getElementById('agree').checked)
		{
			return true;
		}
		{
			alert('Please go through the Terms and Conditions once');
			return false;
		}"-->
		<tr>		



<td><a href="image\terms.pdf" target="_blank"><input type="checkbox" name="checkbox" value="check" id="agree"/>
I accept all the Terms and Conditions. </a>  </td></tr>

		
	<tr>
		<td><input type="submit" value="Join" class="menulink"
			style="margin-top: 40px" ></td>
	<td><a href="elementary.jsp"><input type="button" value="back" onClick="back()" class="menulink"
			style="margin-top: 40px" ></a></td>
		<td><input type="reset" value="Clear form" class="menulink" style="margin-top:40px">
	</td></tr>


		
			</tabel>
		</form>
		<%
}
}catch(Exception e){e.printStackTrace();}
%>	
		<script>
<%
try{
	String msg=request.getParameter("msg");  
	if (msg!=null){ 
	if(msg.equals("jnfld")){ 
		%>
		alert("Please try again!");
		
		<%
	 }}
	 
}catch(Exception e){
	e.printStackTrace();
}
%>
</script>

<%@include file="footer.jsp" %>
