
<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp" %>
<form method="post" action="schoolhead1">
<center><h1>Class Details</h1></center>
<a href="update.jsp"><input type="button" value="update Class Seats" class="menulink"></a>
<table border="1" align="center" width="100%" height="100%">
<%	ResultSet rs = DBMan.getClassDetails2();
		ResultSetMetaData	rm = rs.getMetaData();
		int n = rm.getColumnCount();			%><tr><%
	for(int i=1;i<=n;i++)
		out.println("<th>"+rm.getColumnName(i).toUpperCase()+"</th>");
%></tr><%

	while(rs.next()){
		out.println("<tr>");
			for(int i=1;i<=n;i++){
				out.println("<td valign='top'>"+rs.getString(i));
				
				out.println("</td>");
				
			}//out.println("<td><a href='update.jsp'><input type='button' value='update'></a></td>");
		out.println("</tr>");
		
	}
	%></table><br>
	
	
	<script>
<%
  try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("upscs")){ 
		 
		%>
		alert("updated successfully");
		<%
		
	 }
	 
  }catch(Exception e){}
%>
</script>
<%@include file="footer.jsp" %>
	