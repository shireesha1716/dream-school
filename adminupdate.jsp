<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.io.File,java.sql.*"%>
<%@include file="header.jsp"%>
<!-- <form method="post" action="adminupdate"> -->
<table style="margin: 0 auto">
<%


Connection cn=null;
try{
cn=DBMan.getConnection();
PreparedStatement ps=cn.prepareStatement("select * from admin");
ResultSet rs=ps.executeQuery();
while(rs.next()){%>
	
	
<form method="post" action="adminupdate">
<tr><td><a href="registerlist1.jsp"><input type="button" value="registration details" class="menulink"
			style="margin-top: 40px" ></a></td>
<td><a href="joinlist.jsp"><input type="button" value="Joining details" class="menulink"
			style="margin-top: 40px" ></a></td>			
			</tr><br>
<tr>
			<td colspan=1><h1>Update the details</h1></td>
			<tr>
			<td>Email Id :</td>
			<td><input type="text" name="email" value="<%=rs.getString("emailid")%>" readonly="readonly"></td>
</tr>
<tr>
			<td>Admission Fee :</td>
			<td><input type="text" name="fee" value="<%=rs.getString("fee")%>"></td>
</tr>
<tr>
			<td>Hostel Availability :</td>
			<td><input type="text" name="hostel" value="<%=rs.getString("hostel")%>"></td>
</tr>
<tr>
			<td>Home:</td>
			<td><input type="text" name="home" value="<%=rs.getString("home")%>"></td>
</tr>
<tr>
			<td>Available seats :</td>
			<td><input type="text" name="seats" value="<%=rs.getString("seats")%>"></td>
</tr>
<tr>
			<td>Personal Vehicle :</td>
			<td><input type="text" name="pvehicle" value="<%=rs.getString("pvehicle")%>"></td>
</tr>
<tr>
			<td>School Vehicle :</td>
			<td><input type="text" name="svehicle" value="<%=rs.getString("svehicle")%>"></td>
</tr>
<tr>
		<td><input type="submit" value="submit" class="menulink"
			style="margin-top: 40px" >
	<td><input type="submit" value="Back" class="menulink"
			style="margin-top: 40px" >
		<td><input type="reset" value="Clear form" class="menulink"
			style="margin-top: 40px">
	</tr>
</table>
</form>
<%
}
}catch(Exception e){e.printStackTrace();}


%>

<%@include file="footer.jsp" %>