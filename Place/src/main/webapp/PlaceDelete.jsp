<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
	String PLid = request.getParameter("PLid");
	int no = Integer.parseInt(PLid);
	Class.forName("com.mysql.jdbc.Driver").getDeclaredConstructor().newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
	Statement stat = conn.createStatement();
	stat.executeUpdate("delete from place1 where PLid ='" +PLid+"'");
	response.sendRedirect("PlaceView.jsp");
	%>