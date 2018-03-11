<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp" %>

<a href="adminupdate.jsp" class="menulink">Back</a>
<table border="1" align="center" width="100%" height="100%">
<%	ResultSet rs = DBMan.getRegisterDetails();
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
	%>
	</table>
<%@include file="footer.jsp" %>
	