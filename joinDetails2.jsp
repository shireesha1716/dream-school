<%@page import="java.sql.*" %>
<%@include file="header.jsp"%>
<!-- <form method="post" action="adminupdate"> -->
<script>
function getmyfun(){
	window.print();
}

</script>

<%
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/MyAppDat","student","student");
PreparedStatement ps=con.prepareStatement("select * from joining2 where jemailid='"+session.getAttribute("em")+"'");
ResultSet rs=ps.executeQuery();
out.print("welcom"+session.getAttribute("em"));
%> 
<table style="margin: 0 auto">
<% while(rs.next())
{ 
%>
	<form>
	
	 	
	 	<tr>
			<td colspan=1><h1>Parent Details</h1></td>
			
			<tr>
			<td>Student Name :</td>
			<td><%=rs.getString(1)%></td>
</tr>
<tr>
			<td>Parent Name :</td>
			<td><%=rs.getString(2)%></td>
</tr>
<tr>
			<td>Gender :</td>
			<td><%=rs.getString(3)%></td>
</tr>
<tr>
			<td>class1 :</td>
			<td><%=rs.getString(4)%></td>
</tr>
<tr>
			<td> Student age :</td>
			<td><%=rs.getString(9)%></td>
</tr>
<tr>
			<td>Student Date of birth:</td>
			<td><%=rs.getString(10)%></td>
</tr>
<tr>
			<td> Contact Number:</td>
			<td><%=rs.getString(11)%></td>
</tr>
<tr>
			<td> Address:</td>
			<td><%=rs.getString(12)%></td>
</tr>
<tr>
			<td>Accommodation Facility :</td>
			<td><%=rs.getString(5)%></td>
</tr>
<tr>
			<td>Vehicle Facility :</td>
			<td><%=rs.getString(6)%></td>
</tr>
<tr>
			<td>Email ID  :</td>
			<td><%=rs.getString(7)%></td>
</tr>
<tr>
			<td>Admission No :</td>
			<td><%=rs.getString(8)%></td>
</tr>

<tr><td align="center"><input type="button" value="print this page" onclick="getmyfun();"></td></tr>

</form>
	<%
	
}
con.close();
%>

</table>
<%@include file="footer.jsp" %>