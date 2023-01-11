package Register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String regNo = request.getParameter("regNo");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String location = request.getParameter("location");
		String radio = request.getParameter("radio");
		String hotelRating = request.getParameter("hotelRating");
		String unavailableDates = request.getParameter("unavailableDates");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = RegisterDuo.inserthotel_details(fname,lname,regNo,email,phone,location,radio,hotelRating,unavailableDates,description);
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("thankyou.jsp");
			dis.forward(request, response);
		}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("unsucess.jsp");
			dis2.forward(request, response);
		}
		
	}
	

	
	
	
	

}
