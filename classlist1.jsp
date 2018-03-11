<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp" %>
<center><h1>Class Details</h1></center>
<table border="1" align="center" width="100%" height="100%">
<%	ResultSet rs = DBMan.getClassDetails();
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
			}
		out.println("</tr>");
	}
	%></table><br>
	<center>
	<tr><td></td><td><a href="join1.jsp" class="menulink">Back</a></td></tr>
	</center>
	
	<script>
<%
  try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("noseats")){ 
		 
		%>
		alert("Sorry seats are not avialable in that class");
		<%
		
	 }
	 
  }catch(Exception e){}
%>
</script>
<%@include file="footer.jsp" %>
	