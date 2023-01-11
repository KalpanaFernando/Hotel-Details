<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String sroll = request.getParameter("sroll");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour_pro","root","Wish@1997");
	
	Statement stat = con.createStatement();
	String sql = "delete from hotel_details where Hotel_ID="+sroll;
	stat.execute(sql);
	
	response.sendRedirect("admin.jsp");
	con.close();
	
	
}
catch(Exception e)
{
	out.println("ERROR:"+e.toString());
}







%>

</body>
</html>