<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.io.File,java.sql.*"%>
<%@include file="header.jsp"%>
<!-- <form method="post" action="adminupdate"> -->
<script>
function getmyfun(){
	window.print();
}

</script>
<table style="margin: 0 auto">
<%


Connection cn=null;
try{
cn=DBMan.getConnection();
PreparedStatement ps=cn.prepareStatement("select * from joining where jemailid='"+session.getAttribute("em")+"'");
String sname=(String)session.getAttribute("user");
String jemailid=(String)session.getAttribute("user");

String pname=(String)session.getAttribute("user");
String gender=(String)session.getAttribute("user");
String class1=(String)session.getAttribute("user");
String school=(String)session.getAttribute("user");
String accommodation=(String)session.getAttribute("user");
String vehicle=(String)session.getAttribute("user");
String aid=(String)session.getAttribute("user");


ResultSet rs=ps.executeQuery();
while(rs.next()){
	System.out.println(jemailid);
session.setAttribute("user", jemailid);
session.setAttribute("user", sname);
session.setAttribute("user", pname);
session.setAttribute("user", gender);
session.setAttribute("user", class1);
session.setAttribute("user", school);
session.setAttribute("user", accommodation);
session.setAttribute("user", vehicle);
session.setAttribute("user", aid);
System.out.println(sname);
%>
<form method="post" >
<tr>
			<td colspan=1><h1>Parent Details</h1></td>
			
			<tr>
			<td>Student Name :</td>
			<td><%=sname%></td>
</tr>
<tr>
			<td>Parent Name :</td>
			<td><%=pname%></td>
</tr>
<tr>
			<td>Gender :</td>
			<td><%=gender%></td>
</tr>
<tr>
			<td>class1 :</td>
			<td><%=class1%></td>
</tr>
<tr>
			<td> Type Of School :</td>
			<td><%=school%></td>
</tr>
<tr>
			<td>Accommodation Facility :</td>
			<td><%=accommodation%></td>
</tr>
<tr>
			<td>Vehicle Facility :</td>
			<td><%=vehicle%></td>
</tr>
<tr>
			<td>Email ID  :</td>
			<td><%=jemailid%></td>
</tr>
<tr>
			<td>Admission No :</td>
			<td><%=aid%></td>
</tr>

<tr><td align="center"><input type="button" value="print this page" onclick="getmyfun();"></td></tr>
</table>
</form>
<%
}
}catch(Exception e){e.printStackTrace();}

%>

<script>
<%
  try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("jnscs")){ 
		 
		%>
		alert(" Joined Successfull!!");
		<%
		
	 }
	
	 
  }catch(Exception e){}
%>
</script>
<%@include file="footer.jsp" %>