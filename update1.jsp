<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.io.File,java.sql.*"%>
<%@include file="header.jsp"%>
<!-- <form method="post" action="adminupdate"> -->
<table style="margin: 0 auto">
<%


Connection cn=null;
try{
cn=DBMan.getConnection();
PreparedStatement ps=cn.prepareStatement("select * from classdetails2 ");
ResultSet rs=ps.executeQuery();
%>
	
	
<form method="post" action="schoolhead1">

<tr>
			<td colspan=1><h1>Update the details</h1></td>
<tr>
			<td>Class Name:</td>
			<td><select name="classes">
					<option value="">Select class in which you wants to join</option>
					<% 
 while(rs.next())
	{
		%>
				
			<option value="<%=rs.getString("classes")%>" ><%=rs.getString("classes")%></option>
		<%} 
	
	%></select></td>
</tr>
<tr>
			<td>Nofseats:</td>
			<td><input type="text" name="nofseats"></td>
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

}catch(Exception e){e.printStackTrace();}


%>

<%@include file="footer.jsp" %>