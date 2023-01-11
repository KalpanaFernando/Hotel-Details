<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
	String Pid = request.getParameter("Pid");
	int no = Integer.parseInt(Pid);
	Class.forName("com.mysql.jdbc.Driver").getDeclaredConstructor().newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
	Statement stat = conn.createStatement();
	stat.executeUpdate("delete from pack1 where Pid ='" +Pid+"'");
	response.sendRedirect("PackageView.jsp");
	%>