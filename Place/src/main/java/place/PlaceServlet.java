package place;

import java.io.IOException; 
import java.sql.Connection; 
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 




//Servlet Name 
@WebServlet("/PlaceServlet") 
public class PlaceServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, 
HttpServletResponse response) 

		throws ServletException, IOException 
	{ 
		try { 

			
			Connection con = DatabaseConnecter.initializeDatabase(); 

			
			PreparedStatement st = con 
				.prepareStatement("insert into place1 values(?,?,?,?,?,?)"); 

			st.setInt(1, Integer.valueOf(request.getParameter("PLid"))); 
			st.setString(2, String.valueOf(request.getParameter("PLname")));
			st.setString(3, String.valueOf(request.getParameter("CofPl")));
			st.setString(4, String.valueOf(request.getParameter("EnFee"))); 
			st.setString(5, String.valueOf(request.getParameter("rules"))); 
			st.setString(6, String.valueOf(request.getParameter("PLdesc"))); 
			
			
			st.executeUpdate(); 

			
			st.close(); 
			con.close(); 

			 


			
			RequestDispatcher rd = request.getRequestDispatcher("/PlaceView.jsp");
			rd.include(request, response);
			response.sendRedirect("PlaceView.jsp");
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 

}



