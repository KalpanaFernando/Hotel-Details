package pack;


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
@WebServlet("/PackageServlet") 
public class PackageServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, 
HttpServletResponse response) 

		throws ServletException, IOException 
	{ 
		try { 

			
			Connection con = DatabaseConnecter.initializeDatabase(); 

			
			PreparedStatement st = con 
				.prepareStatement("insert into pack1 values(?,?,?,?,?,?)"); 

			st.setInt(1, Integer.valueOf(request.getParameter("Pid"))); 
			st.setString(2, String.valueOf(request.getParameter("Pname")));
			st.setString(3, String.valueOf(request.getParameter("NoOfper")));
			st.setString(4, String.valueOf(request.getParameter("Pdate"))); 
			st.setString(5, String.valueOf(request.getParameter("NoOfDay"))); 
			st.setString(6, String.valueOf(request.getParameter("Vdetails"))); 
			
			
			st.executeUpdate(); 

			 
			st.close(); 
			con.close(); 

			 


			
			RequestDispatcher rd = request.getRequestDispatcher("/PackageView.jsp");
			rd.include(request, response);
			response.sendRedirect("PackageView.jsp");
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 

}



