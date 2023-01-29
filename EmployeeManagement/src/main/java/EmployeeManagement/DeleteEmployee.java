package EmployeeManagement;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class DeleteEmployee
 */
@WebServlet("/DeleteEmployee")
public class DeleteEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String eid = request.getParameter("id");
		
		int id = Integer.parseInt(eid);
		

		int emp = 3;
		emp = Employee.DeleteEmployee(id);

		if (emp == 1) {
            
			// response.sendRedirect("Success.jsp");
			RequestDispatcher dis = request.getRequestDispatcher("ViewEmployee.jsp");
			dis.forward(request, response);
			System.out.println("Successful");
		} else if (emp == 0) {


			// response.sendRedirect("unsuccess.jsp");
			RequestDispatcher dis2 = request.getRequestDispatcher("ViewEmployee.jsp");
			dis2.forward(request, response);
			System.out.println("UnSuccessful");
		}
	}

}
