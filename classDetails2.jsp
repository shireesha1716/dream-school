<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>

 <a href="joinDetails2.jsp" class="menulink">Back</a>
<%
	String id = request.getParameter("id"); 
	ResultSet rs = DBMan.getClassDetails2ById(id);
	rs.next();
%>
	<h1><%=id%></h1>
	<h1><%=rs.getString(1)%></h1><br>
	<h2>Classes : <%=rs.getString(2)%><br>
	<h2>No.of seats available:<%=rs.getString(3)%><br>
	</h2>
<%@include file="footer.jsp" %>