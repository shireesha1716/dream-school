<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>

 <a href="joinDetails1.jsp" class="menulink">Back</a>
<%
	String id = request.getParameter("id"); 
	ResultSet rs = DBMan.getJoinDetailsById(id);
	rs.next();
%>
	<h1><%=id%></h1>
	<h1><%=rs.getString(1)%></h1><br>
	<h2>School Name : <%=rs.getString(1)%><br>
	<h2>Parent Name :<%=rs.getString(2)%><br>
	<h2>Gender :<%=rs.getString(3)%><br>
	<h2>Class1 :<%=rs.getString(4)%><br>
	<h2>Type of School :<%=rs.getString(5)%><br>
	<h2>Accommodation :<%=rs.getString(6)%><br>
	<h2>Vehicle :<%=rs.getString(7)%><br>
	<h2>Email ID :<%=rs.getString(8)%><br>
	<h2>Admission ID :<%=rs.getString(9)%><br>
	
	</h2>
<%@include file="footer.jsp" %>
