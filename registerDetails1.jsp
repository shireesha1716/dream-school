<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>

 <a href="adminupdate.jsp" class="menulink">Back</a>
<%
	String id = request.getParameter("id"); 
	ResultSet rs = DBMan.getRegisterDetailsById(id);
	rs.next();
%>
	<h1><%=id%></h1>
	<h1><%=rs.getString(1)%></h1><br>
	<h2>password : <%=rs.getString(2)%><br>
	<h2>username:<%=rs.getString(3)%><br>
	<h2>contact:<%=rs.getString(4)%><br>
	<h2>gender:<%=rs.getString(5)%><br>
	<h2>state:<%=rs.getString(6)%><br>
	<h2>district:<%=rs.getString(7)%><br>
	</h2>
	
<%@include file="footer.jsp" %>