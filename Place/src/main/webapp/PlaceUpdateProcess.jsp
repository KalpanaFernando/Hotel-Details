<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/tour";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String PLid = request.getParameter("PLid");
String PLname =request.getParameter("PLname");
String CofPl =request.getParameter("CofPl");
String EnFee=request.getParameter("EnFee");
String rules=request.getParameter("rules");
String PLdesc=request.getParameter("PLdesc");





if(PLid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(PLid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update place1 set PLid=?,PLname=?,CofPl=?,EnFee=?,rules=?,PLdesc=? where PLid="+personID;
ps = con.prepareStatement(sql);
ps.setInt(1, personID);
ps.setString(2,PLname);
ps.setString(3,CofPl);
ps.setString(4,EnFee);
ps.setString(5,rules);
ps.setString(6,PLdesc);

int i = ps.executeUpdate();
if(i > 0)
{
	

RequestDispatcher rd = request.getRequestDispatcher("PlaceView.jsp");
rd.include(request, response);
response.sendRedirect("PlaceView.jsp");
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