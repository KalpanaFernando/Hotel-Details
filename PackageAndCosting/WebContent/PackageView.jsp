<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "tour";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <meta name="description" content="">
    <meta name="author" content="templatemo">

    <link href="css/viewtable.css" rel="stylesheet">
 <style>
h1 {
  text-align: center;
  padding: 12px;
  font-size: 44px;
  text-transform: uppercase;
  color: #8a2be2;
}
.button1 {
  background-color: #008b8b;
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 10px;
  margin: 4px 2px;
  cursor: pointer;
}

.button3 {
  background-color: #008b8b;
  border: none;
  color: white;
  padding: 6px 10px;
  text-align: center;
  font-weight: bold;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;  
  cursor: pointer;
  border-radius:7px;
}



 </style>   
<title>Package and Costing Details</title>
</head>
<body>

<h1>Package and Costing Details</h1>


        
<div class="">

   <div class="">
	<form action='' method="post">
		
		<input type='search' class='form-control' name='s' placeholder ='Search here'>
		
	</form>
	<a href="PackageForm.jsp"><input type='submit' class='button3' value='Add new data'style='margin-top:10px;'></a>
   </div>
   
   			<center>
							
							<table id="mytable" class="content-table">
								 
								 <thead>
								 <th scope="col">Tour ID</th>
								 <th scope="col">Tour Name</th>
								 <th scope="col">No Of Person</th>
								 <th scope="col">Date</th>
								 <th scope="col">No Of Date</th>
								 <th scope="col">Vehicle Details</th>
								   
								  
									<th>Update</th>
									
									 <th>Delete</th>
								 </thead>
				  
				  
				 <%			  
				 try {
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String query =request.getParameter("s");
String sql;
	if(query!=null){
		sql="select * from pack1 where Pid like '%"+query+"%' or Pname like '%"+query+"%'";
	}
	else{
		sql="select * from pack1";
	}
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
				  <tbody>
				  
				  <tr>
				  <td><%=resultSet.getInt("Pid") %></td>
				  <td><%=resultSet.getString("Pname") %></td>
				  <td><%=resultSet.getString("NoOfper") %></td>
				  <td><%=resultSet.getString("Pdate") %></td>
				  <td><%=resultSet.getString("NoOfDay") %></td>
				  <td><%=resultSet.getString("Vdetails") %></td>
				  
				  
				   <td><a href="PackageUpdate.jsp?Pid=<%=resultSet.getInt("Pid") %>"><button class="button1" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="fas fa-trash-alt"></span></button></p></a></td>
				 
				  <td><a href="PackageDelete.jsp?Pid=<%=resultSet.getInt("Pid") %>"><button class="button1" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="fas fa-trash-alt"></span></button></p></a></td>
				  
				  </tr>
				  
				  <%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
				  
				  </tbody>
					  
			  </table>
			</center>
			
		</div>





</div>
</div>
</div>
</div>
</body>
</html>