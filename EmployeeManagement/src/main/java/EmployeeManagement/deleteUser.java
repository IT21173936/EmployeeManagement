package EmployeeManagement;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteUser
 */
@WebServlet("/deleteUser")
public class deleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String uid = request.getParameter("id");
		int id = Integer.parseInt(uid);
		
		int adb = 3;
		adb = User.DeleteUser(id);

		if (adb == 1) {

			// response.sendRedirect("Success.jsp");
			RequestDispatcher dis = request.getRequestDispatcher("UserLogin.jsp");
			dis.forward(request, response);
			System.out.println("Successful");
		} else if (adb == 0) {

			// response.sendRedirect("unsuccess.jsp");
			RequestDispatcher dis2 = request.getRequestDispatcher("userProfile.jsp");
			dis2.forward(request, response);
			System.out.println("UnSuccessful");
		}
	}

}
