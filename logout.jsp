<%
 session.invalidate();
//application.getRequestDispatcher("index.jsp").include(request,response);
response.sendRedirect("index.jsp?msg=loscs");
%>