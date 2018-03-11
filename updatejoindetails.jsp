<%@page import="java.io.File"%>
<%@include file="header.jsp" %>


<table style="margin: 0 auto">
<%


Connection cn=null;
try{
cn=DBMan.getConnection();
PreparedStatement ps=cn.prepareStatement("select * from joining where jemailid=?");
ResultSet rs=ps.executeQuery();
while(rs.next()){%>
	

<form action="updatejoin" method="post">

<tr><th colspan="2"><h1> Update User Details</h1></th></tr>
<tr>
			<td>Student Name:</td>
			<td><input type="text" name="sname" value="<%=rs.getString("sname")%>" readonly="readonly"></td>
		</tr>

		<tr>
			<td>Parent Name:</td>
			<td><input type="text" name="pname" value="<%=rs.getString("pname")%>" readonly="readonly"></td>
		</tr>

 <tr><td>Age:</td>
<td><input type="number" name="age" value="<%=rs.getString("age")%>"></td></tr><br><br>
<tr><td>Date Of Birth:</td>
<td><input type="date" name="dob" value="<%=rs.getString("dob")%>"></td></tr><br><br>
<tr><td>Contact:</td>
<td><input type="number" name="contact" value="<%=rs.getString("contact")%>"></td></tr>

<tr><td>Address:</td>
<td><textarea type="text" name="address" value="<%=rs.getString("address")%>" width="40" height="50"></textarea></td></tr>
		<tr>
			<td>Respected class:</td>
			<td><select name="class1" value="<%=rs.getString("class1")%>">
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
				value="<%=rs.getString("accommodation")%>"> Home<input type="radio" name="accommodation"
				value=<%=rs.getString("accommodation")%>">
			</td>
		</tr>
		<tr>
			<td>Vehicle facility:</td>
			<td>By School Bus<input type="radio" name="vehicle" value="<%=rs.getString("vehicle")%>"
				> By personal Vehicle<input type="radio"
				name="vehicle" value="<%=rs.getString("vehicle")%>">
			</td>
		</tr>
<tr><td>EmailId:</td>
<td><input type="text"  name="email" value="<%=rs.getString("emailid")%>" readonly="readonly" ></td></tr>
</form></table>
<%
}
}catch(Exception e){e.printStackTrace();}


%>
<script>
<%
  try{
	  String msg=request.getParameter("msg");
		if(msg.equals("upfld")){
			%>
			alert("You have failed to update!");
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
