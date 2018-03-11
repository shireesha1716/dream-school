<%@page language="java"%>
<%@page import="java.sql.*"%>
<form method="post" action="update.jsp">
<table >

<%
String id=request.getParameter("id");
int no=Integer.parseInt(id);
//String id1=request.getParameter("usernum");
//int no1=Integer.parseInt(id1);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ibm", "root", "root");
String query = "select * from registration1 where id='"+no+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr><td colspan="2" >Update User details</td></tr>
<tr><td>ID</td><td><input type="text" name="id" value="<%=rs.getString("id")%>" readonly="readonly"></td>
<tr><td>FirstName</td><td><input type="text" name="firstname" value="<%=rs.getString("firstname")%>"></td></tr>
<tr><td>LastName</td><td><input type="text" name="lastname" value="<%=rs.getString("lastname")%>"></td></tr>
<tr><td>Emailid</td><td><input type="text" name="emailid" value="<%=rs.getString("emailid")%>"></td></tr>
<tr><td>Password</td><td><input type="text" name="password" value="<%=rs.getString("password")%>"></td></tr>
<tr><td>Gender</td><td><input type="text" name="gender" value="<%=rs.getString("gender")%>"></td></tr>
<tr><td>DOB</td><td><input type="text" name="dob" value="<%=rs.getString("dob")%>"></td></tr>
<tr><td>Mobilenum</td><td><input type="number" name="mobileno" value="<%=rs.getString("mobileno")%>"></td></tr>
<tr><td>State</td><td><input type="text" name="state" value="<%=rs.getString("state")%>"></td></tr>
<tr><td>District</td><td><input type="text" name="district" value="<%=rs.getString("district")%>"></td></tr>
<tr><td>Mandal</td><td><input type="text" name="mandal" value="<%=rs.getString("mandal")%>"></td></tr>
<tr><td>Village</td><td><input type="text" name="village" value="<%=rs.getString("village")%>"></td></tr>
<tr><td>Street</td><td><input type="text" name="street" value="<%=rs.getString("street")%>"></td></tr>
<tr><td>Pincode</td><td><input type="number" name="pincode" value="<%=rs.getString("pincode")%>"></td></tr>
<tr><td>Userno</td><td><input type="number" name="usernum" value="<%=rs.getString("usernum")%>"></td></tr>



</tr>
<tr>
<td colspan="2"><input type="submit" name="" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form>
</form>