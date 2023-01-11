<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Time"%>
<%@ page import="java.sql.* " %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Guide Register Report Preview</title>
	
<link href="CSS/Report.css" rel="stylesheet">
	
		
<style>
    tab1 { padding-left: 16em; }
    </style>
    
</head>
<body>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>

 		<%
	String Gid = request.getParameter("Hotel_ID");
	String driverName = "com.mysql.jdbc.Driver";
	String ConnectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "tour_pro";
	String UserId="root";
	String password = "Wish@1997";
	
	try{
		Class.forName(driverName);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultset = null;
	
	String Rid = request.getParameter("rID");
	String Rname = request.getParameter("rName");

%>

<div class="A4" style="border:1px solid black; padding:20px; height:39.7cm; ">

	<div class="content">
	<table width="100%">
<tr>
<td><img src="img/logo1.jpg" width="650px" heigth="900px"></td>


</tr>
	</div>
	</table>
<hr>
<br>
<p><tab1><b><u><font size="+2" color="886C65">Hotels Register REPORT</b></u></font></tab1></p>

<center><h1 class="font-weight-bold"><%=Rname%> </h1></center>
<left><p class="font-weight"><%=Rid%> </p></left>
<%
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour_pro","root","Wish@1997");
Statement st=con.createStatement();
String strQuery = "SELECT COUNT(*) FROM tour_pro.hotel_details";
ResultSet rs = st.executeQuery(strQuery);
String Countrow="";
while(rs.next()){
Countrow = rs.getString(1);
out.println("Hotels  :" +Countrow);
}
}
catch (Exception e){
e.printStackTrace();
}
%>

  		<table class="table table-striped" cellspacing="18" align="center">
									<thead>
									  <tr>
										 <th scope="col">Hotel ID</th>
								 <th scope="col">Name</th>
								 <th scope="col">Last name</th>
								 <th scope="col">Regno</th>
								  <th scope="col">Email</th>
								   <th scope="col">Phone No</th>
								   <th scope="col">location</th>

									  </tr>
									  
									
										<%
											try{
												connection = DriverManager.getConnection(ConnectionUrl+dbName,UserId,password);
												statement=connection.createStatement();
												String sql ="SELECT * FROM tour_pro.hotel_details";
												
												resultset = statement.executeQuery(sql);
												while(resultset.next()){
													
												
											
										
									%>
									<tr>
									 <td><%=resultset.getInt(1) %></td>
									  <td><%=resultset.getString(2) %></td>
									  <td><%=resultset.getString(3) %></td>
									  <td><%=resultset.getString(4) %></td>
									  <td><%=resultset.getString(5) %></td>
									  <td><%=resultset.getString(6) %></td>
									  <td><%=resultset.getString(7) %></td>
								

									</tr>
									<%
												}
											connection.close();	
											} catch(Exception e){
												e.printStackTrace();
											}
											
									%>
									
									
								  </table>
<br><br><br><br><br><br><br><br><br><br><br><br>
								  
<footer>
<p align="center"><b>PAGE NO:: 01<b></p>
<p align="center"><i><b>----------------------------CREATED BY:: TOUR MANAGE----------------------------</i><b></p>
</footer>

</div>

        
     


      <script>
        window.print();
      </script>



	
	
</body>
</html>