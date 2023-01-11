<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.* " %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="CSS/book.css">
</head>
<body>

<%
String Hotel_ID = null;
String fname = null;
String lname = null;
String regNo = null;
String email = null;
String phone = null;
String location = null;
String radio =null;
String hotelRating = null;
String unavailableDates = null;
String description = null;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	String userName = "root";
	String password = "Wish@1997";
	String url = "jdbc:mysql://localhost:3306/tour_pro";
	Connection con = DriverManager.getConnection(url,userName,password);
    Statement stat = con.createStatement();  
	String query = request.getParameter("id");
	String sql;
	if(query!=null)
	{
		
		sql = "select * from tour_pro.hotel_details where Hotel_ID ="+request.getParameter("id");
		System.out.println("Pass");
		
	}
	else
	{
		sql = "select * from tour_pro.hotel_details";
		
	}
	ResultSet rs = stat.executeQuery(sql);
	

    Hotel_ID = request.getParameter("id");

	
	while(rs.next())
	{
		
		
	
	fname =rs.getString(2) ;
	lname =rs.getString(3) ;
	regNo =rs.getString(4) ;
	email=rs.getString(5) ;
	phone=rs.getString(6) ;
	location=rs.getString(7); 
	radio=rs.getString(8);
	hotelRating =rs.getString(9) ;
	unavailableDates=rs.getString(10) ;
	description =rs.getString(11) ;
	
	}
	
}
catch(Exception e)
{
	out.println("Exception :"+e.getMessage());
	e.printStackTrace();
}

%>


  <h1>Hotel Id is : <%= Hotel_ID %></h1>
  
        <div id="body">
            <div class="container">
    <div class="title"><b>Add Hotels</b></div>
    <div class="content">

	<form action="UpdateServlet" id="form" method="post">
	
		
            <input type="number" name=Hotel_ID value="<%= Hotel_ID %>" readonly>
            <br>
		<div class="user-details">
          <div class="input-box">
            <span class="details">First Name</span><input type="text" name="fname" value="<%= fname %>">
            </div>
		<div class="input-box">
            <span class="details">Last Name</span><input type="text" name="lname" value="<%= lname %>">
            </div>
		 <div class="input-box">
            <span class="details">Hotel Reg Number</span> <input type="text" name="regNo" value="<%= regNo %>">
            </div>
		<div class="input-box">
            <span class="details">Email</span><input type="text" name="email" value="<%= email %>">
             </div>
		 <div class="input-box">
            <span class="details">Phone Number</span> <input type="text" name="phone" value="<%= phone %>">
            </div>
		 <div class="input-box">
            <span class="details">Location</span><input type="text" name="location" value="<%= location %>">
            </div>
		
		<%
		 if(radio.equals("Available")) {
		%>
		<div class="input-box">
            <span class="details">Available</span>
		<input type="radio" name="radio" value="Available" checked></div>
		<div class="input-box">
            <span class="details">Unavailable</span>
		<input type="radio" name="radio" value="Unavailable"></div>
		<% }
		
		 else {
		
		%>
		<div class="input-box">
            <span class="details">Available</span>
		<input type="radio" name="radio" value="Available" ></div>   
		<div class="input-box">
            <span class="details">Unavailable</span>       
		<input type="radio" name="radio" value="Unavailable" checked></div>
		
		<% } %>
		
		 <div class="input-boxx">
            <span class="details">Hotel Rating</span>
		 <input type="number" name="hotelRating" value="<%= hotelRating %>"></div>
		
		<div class="input-boxx">
            <span class="details">Unavailable Dates</span><input type="date" name="unavailableDates" value="<%= unavailableDates %>"></div>>
		
		<div class="input-boxxx">
            <span class="details">Description</span>
		<input type="text" name="description" value="<%= description %>"></div></div>
		 <div class="button">
		<input type="Submit" name="Submit" value="Update"></div>
		
	
	
	</form>
	</div>
	</div>
	</div>
		

</body>
</html>