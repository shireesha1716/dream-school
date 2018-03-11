<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%
	String id = request.getParameter("id"); 
	ResultSet rs = DBMan.getSchoolById(id);
	rs.next();
%><h2>
	<img  style="float:right" src="image/<%=id%>.jpg" width=300px>
	<h1><%=rs.getString(2)%></h1><br>
	<span style="color:red;font-weight:bold">Fee Range:Rs.<%=rs.getString(4)%> /-
	- <%=rs.getString(5) %> /-</span><br>
	</h2>
	<%=rs.getString(3)%>">
	<!--  <a href="join.jsp?id=<%=rs.getString(1) %>"><input type="submit" value="Join" align="center" class="menulink" style="margin-top:40px"></a>
-->
<script>
<%
try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("upscs")){ 
		 
		%>
		alert("details Updated Successfully!");
		<%
		
	 
		 }
}catch(Exception e){}
%>
</script>
<%@include file="footer.jsp" %>