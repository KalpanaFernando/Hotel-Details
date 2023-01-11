<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/tour";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String Pid = request.getParameter("Pid");
String Pname =request.getParameter("Pname");
String NoOfper =request.getParameter("NoOfper");
String Pdate=request.getParameter("Pdate");
String NoOfDay=request.getParameter("NoOfDay");
String Vdetails=request.getParameter("Vdetails");





if(Pid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(Pid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update pack1 set Pid=?,Pname=?,NoOfper=?,Pdate=?,NoOfDay=?,Vdetails=? where Pid="+personID;
ps = con.prepareStatement(sql);
ps.setInt(1, personID);
ps.setString(2,Pname);
ps.setString(3,NoOfper);
ps.setString(4,Pdate);
ps.setString(5,NoOfDay);
ps.setString(6,Vdetails);

int i = ps.executeUpdate();
if(i > 0)
{
	

RequestDispatcher rd = request.getRequestDispatcher("PackageView.jsp");
rd.include(request, response);
response.sendRedirect("PackageView.jsp");
}
else
{
out.print("There is a problem in updating Record.");

}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%> 