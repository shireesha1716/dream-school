<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.io.File,java.sql.*"%>
<%@include file="header.jsp"%>
<!-- <form method="post" action="adminupdate"> -->
<table style="margin: 0 auto">
<%


Connection cn=null;
try{
cn=DBMan.getConnection();
PreparedStatement ps=cn.prepareStatement("select * from joining3");
ResultSet rs=ps.executeQuery();
while(rs.next()){%>

<form method="post" action="adminupdate">
<tr>
			<td colspan=1><h1>Update the details</h1></td>
				<tr>
			<td>Admission No :</td>
			<td><%=rs.getString("aid")%></td>
</tr>
			<tr>
			<td>Student Name :</td>
			<td><%=rs.getString("sname")%></td>
</tr>
<tr>
			<td>Parent Name :</td>
			<td><%=rs.getString("pname")%></td>
</tr>
<tr>
			<td>Gender :</td>
			<td><%=rs.getString("gender")%></td>
</tr>
<tr>
			<td>class1 :</td>
			<td><%=rs.getString("class3")%></td>
</tr>
<tr>
			<td> Type Of School :</td>
			<td><%=rs.getString("school")%></td>
</tr>
<tr>
			<td>Accommodation Facility :</td>
			<td><%=rs.getString("accommodation")%></td>
</tr>
<tr>
			<td>Vehicle Facility :</td>
			<td><%=rs.getString("vehicle")%></td>
</tr>
<tr>
			<td>Email ID  :</td>
			<td><%=rs.getString("jemailid")%></td>
</tr>

</table>
</form>
<%
}
}catch(Exception e){e.printStackTrace();}

%>
