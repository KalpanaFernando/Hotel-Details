package Register;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegisterDuo {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;
	
	
//Login 
public static boolean validate(String username,String  password)
{
	try
	{
		con = connectionDB.getConnection();
		stat = con.createStatement();
		String sql = "SELECT * FROM admin WHERE username='"+username+"'AND password='"+password+"'";
		rs = stat.executeQuery(sql);
		
		if(rs.next())
		{
			isSuccess = true;
		}
		else
		{
			isSuccess = false;
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	return isSuccess;
}	
	
	
//Insert hotel details
 public static boolean inserthotel_details(String fname,String lname,String regNo,String email,String phone,String location,String radio,String hotelRating,String unavailableDates,String description)
 {
	 boolean isSuccess = false;
		 
		 try
		 {
			 Connection con = connectionDB.getConnection();
			 Statement stat = con.createStatement();
			 String sql = "insert tour_pro.hotel_details values (0,'"+fname+"','"+lname+"','"+regNo+"','"+email+"','"+phone+"','"+location+"','"+radio+"','"+hotelRating+"','"+unavailableDates+"','"+description+"')";
			 int rs = stat.executeUpdate(sql);
			 
			 if(rs > 0)
			 {
				 isSuccess = true;
			 }
			 else
			 {
				 isSuccess = false;
			 }
			 
			 
		 }
		 catch(Exception e)
		 {
			e.printStackTrace(); 
		 }
	 
	 return isSuccess;
 }
 
 //Update serv connection
 public static boolean updatehotel_details(String Hotel_ID,String fname,String lname,String regNo,String email,String phone,String location,String radio,String hotelRating,String unavailableDates,String description)
 { 
	 try
	 {
		 Connection con = connectionDB.getConnection();
		 Statement stat = con.createStatement();
		 String sql = "update tour_pro.hotel_details set fname='"+fname+"',lname='"+lname+"',regNo='"+regNo+"',email='"+email+"',phone='"+phone+"',location='"+location+"',radio='"+radio+"',hotelRating='"+hotelRating+"',"+ "unavailableDates='"+unavailableDates+"',description='"+description+"'"
				 	+"where Hotel_ID='"+Hotel_ID+"'";
		 int rs = stat.executeUpdate(sql);
		 
		 if(rs > 0)
		 {
			 isSuccess = true;
		 }
		 else
		 {
			 isSuccess = false;
		 }
		 
		 
	 }
	 catch(Exception e)
	 {
		e.printStackTrace(); 
	 }
	 
	 
	 return isSuccess;
 }

 
 }


