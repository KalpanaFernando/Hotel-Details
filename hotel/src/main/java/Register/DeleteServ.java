package Register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServ
 */
@WebServlet("/DeleteServ")
public class DeleteServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();   
	    Connection con=null;
	    try {

	        String Hotel_ID=request.getParameter("Hotel_ID");
	        Class.forName("com.mysql.jdbc.Driver");
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour_pro","root","Wish@1997");
	        PreparedStatement ps=con.prepareStatement("delete from tour_pro.hotel_details where Hotel_ID='"+Hotel_ID+"'");
	        ps.setInt(1, Integer.parseInt(Hotel_ID));
	        int i=ps.executeUpdate();
	        if(i!=0)
	        {
	            out.println("Deleting rows");
	        }
	        else if(i==0)
	        {
	            out.print("deleted");
	        }
	    } catch (ClassNotFoundException | SQLException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	}

}
