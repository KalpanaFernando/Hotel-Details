<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.* " %>

<html>
<head>
<title>Admin Panel</title>
<link rel="stylesheet" href="CSS/bookingtable.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark">
			<div>
				<a href="admin.jsp" class="navbar-brand">Admin Management Panel </a>
			</div>
			<div >
			   <a href="index.jsp" class="btn btn-warning" id="btn-warning">HOME</a>
			</div>

		</nav>
	</header>
	<br>

	<div class="row" id="row">

		<div class="container">
		<div>
		<form  method=post>
		<input type="text" class="form-control" id="form-control" name="d" placeholder="search by ID here....!" >
		</form>
		</div>
			<h3 class="text-center" id="text-center">List of Hotel Details</h3>
			<hr id="hr">
			<br>
			<table class="table table-bordered" id="table-bordered">
			<thead>
			
				<c:forEach var="hotels" items="${hotel_details}">
				
				<c:set var="Hotel_ID" value="${hotels.Hotel_ID}"/>
				<c:set var="fname" value="${hotels.fname}"/>
				<c:set var="lname" value="${hotels.lname}"/>
				<c:set var="regNo" value="${hotels.regNo}"/>
				<c:set var="email" value="${hotels.email}"/>
				<c:set var="phone" value="${hotels.phone}"/>
				<c:set var="location" value="${hotels.location}"/>
				<c:set var="radio" value="${hotels.radio}"/>
				<c:set var="hotelRating" value="${hotels.hotelRating}"/>
				<c:set var="unavailableDates" value="${hotels.unavailableDates}"/>
				<c:set var="description" value="${hotels.description}"/>
				
				
				
				</c:forEach>
			
			
					<tr>
						<th>Hotel_ID</th>
						<th>First-name</th>
						<th>Last-name</th>
						<th>Hotel Reg ID</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Location</th>
						<th>Availability</th>
						<th>Hotel Rating</th>
						<th>Unavailable Dates</th>
						<th>Description</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
						<%
						
						try
						{
							Class.forName("com.mysql.jdbc.Driver");
							String userName = "root";
							String password = "Wish@1997";
							String url = "jdbc:mysql://localhost:3306/tour_pro";
							Connection con = DriverManager.getConnection(url,userName,password);
						    Statement stat = con.createStatement();  
							String query = request.getParameter("d");
							String sql;
							if(query!=null)
							{
								
								sql = "select * from tour_pro.hotel_details where regNo ="+query;
								
							}
							else
							{
								sql = "select * from tour_pro.hotel_details";
								
							}
							ResultSet rs = stat.executeQuery(sql);
							
						
						
						
							
							while(rs.next())
							{
								%>
							<tr>	
							<td><%=rs.getInt(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=rs.getString(4) %></td>
							<td><%=rs.getString(5) %></td>
							<td><%=rs.getString(6) %></td>
							<td><%=rs.getString(7) %></td>
							<td><%=rs.getString(8) %></td>
							<td><%=rs.getString(9) %></td>
							<td><%=rs.getString(10) %></td>
							<td><%=rs.getString(11) %></td>
							
							<td>
							<a href='update.jsp?id=<%=rs.getInt("Hotel_ID")%>' class="btn btn-danger">Update</a></td>
							<td><a href='delete.jsp?sroll=<%=rs.getInt("Hotel_ID")%>' class="btn btn-danger">Delete</a></td>
							
							<c:param name ="Hotel_ID" value="${Hotel_ID}"/>
							<c:param name ="fname" value="${fname}"/>
							<c:param name ="lname" value="${lname}"/>
							<c:param name ="regNo" value="${regNo}"/>
							<c:param name ="email" value="${email}"/>
							<c:param name ="phone" value="${phone}"/>
							<c:param name ="location" value="${location}"/>
							<c:param name ="radio" value="${radio}"/>
							<c:param name ="hotelRating" value="${hotelRating}"/>
							<c:param name ="unavailableDates" value="${unavailableDates}"/>
							<c:param name ="description" value="${description}"/>
							
							
							</tr>	
							
						
								<%
								
								
							}
							
						}
						catch(Exception e)
						{
							out.println("Exception :"+e.getMessage());
							System.out.println("Error");
							e.printStackTrace();
						}
						
						
						%>	
						
					<!-- } -->
				</tbody>
				
			</table>
		</div>
	</div>
</body>
</html>
