<%@page import="java.sql.*"%>
<%

String id=request.getParameter("id");
int no=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ibm", "root", "root");
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM registration1 WHERE id ='"+no+"'");
response.sendRedirect("application.jsp");
}
catch(Exception e){}
%>