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
<title>Place or Destination Details</title>
</head>
<body>

<h1>Place or Destination Details</h1>


        
<div class="">

   <div class="">
	<form action='' method="get">
		
		<input type='search' class='form-control' name='s' placeholder ='Search here'>
		
	</form>
	<a href="PlaceForm.jsp"><input type='submit' class='button3' value='Add new data'style='margin-top:10px;'></a>
   </div>






			  <center>
							
							<table id="mytable" class="content-table">
								 
								 <thead>
								 <th scope="col">ID</th>
								 <th scope="col">Place Name</th>
								 <th scope="col">City of the Place</th>
								  <th scope="col">Entrance Fee</th>
								   <th scope="col">Rules & Regulation</th>
								   <th scope="col">Description</th>
								   
								  
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
		sql="select * from place1 where PLid like '%"+query+"%' or PLname like '%"+query+"%'";
	}
	else{
		sql="select * from place1";
	}
resultSet = statement.executeQuery(sql);	
int i=0;
while(resultSet.next()){
%>
				  <tbody>
				  
				  <tr>
				  <td><%=resultSet.getInt("PLid") %></td>
				  <td><%=resultSet.getString("PLname") %></td>
				  <td><%=resultSet.getString("CofPl") %></td>
				  <td><%=resultSet.getString("EnFee") %></td>
				  <td><%=resultSet.getString("rules") %></td>
				  <td><%=resultSet.getString("PLdesc") %></td>
				  
				  
				   <td><a href="PlaceUpdate.jsp?PLid=<%=resultSet.getInt("PLid") %>"><button class="button1" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="fas fa-trash-alt"></span></button></p></a></td>
				 
				  <td><a href="PlaceDelete.jsp?PLid=<%=resultSet.getInt("PLid") %>"><button class="button1" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="fas fa-trash-alt"></span></button></p></a></td>
				  
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