package EmployeeManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class userLogin
 */
@WebServlet("/userLogin")
public class userLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userLogin() {
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
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");


		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/emp_db","root","5959865");
			Statement stmt = con.createStatement();	
			ResultSet rs = stmt.executeQuery("select email,password from admin where email = '"+email+"' and password = '"+password+"'");
			
			if(rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("email",email);
				response.sendRedirect("AddNewEmployee.jsp");
			}
			else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('ERROR !!! Please Check Your Email or Password...');");
				
				response.sendRedirect("UserLogin.jsp");
				out.println("</script>");
			}
		}catch(Exception e) {
			System.out.println("ERROR !!! Please Check Your Email or Password...");
	    
		}
	}

}
