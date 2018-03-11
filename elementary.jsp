<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<br><br>
<%
ResultSet rs=DBMan.getSchools();
while(rs.next()){
	String name=rs.getString(2);
	if(name.length()>18){
		name=name.substring(0,15)+"...";
	}
	%>


<div style="display:inline-block;width:180px;height:300px;text-align:center;border:1px solid black;
margin:5px;border-radius:5px;padding:5px">
<img src="image/<%=rs.getString(1)%>.jpg"width=120px height=170px><br>
<b><%=name%></b><br>

<b>School</b><br>
<small><small>
<span style="color:red;font-weight:bold"">Fee Range:Rs.<%=rs.getString(4)%>
-<%=rs.getString(5)%>/-</span><br>
</small></small>
<a href="school.jsp?id=<%=rs.getString(1) %>" style="text-decoration:none;color:red">veiw</a>
</div>
<%
}
%>

<script>
<%
  try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("lgscs")){ 
		 
		%>
		alert("Logged in Successfull!!");
		<%
		
	 }
	 if(msg.equals("cpscs")){ 
		 
			%>
			alert("Password Changed successfully!");
			<%
			
		 }
  }catch(Exception e){}
%>
</script>


<%@include file="footer.jsp" %>
