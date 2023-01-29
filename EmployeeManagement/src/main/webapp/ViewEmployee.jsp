<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
 <%@ page import = "java.sql.DriverManager" %>
 <%@ page import = "java.sql.ResultSet" %>
 <%@ page import = "java.sql.Statement" %>
 <%@ page import = "java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee</title>
<link rel = "stylesheet" href = "css/ViewEmployee.css">
</head>
<body>

  <br>
		<div class="topnav">
		  <a class="first" href="">Home</a>
		  <a href="AddNewEmployee.jsp">Add Employee</a>
		  <a href="">View Employee</a>
		  <a href="ViewSalary.jsp">View Salary</a>
		  <a href="userProfile.jsp">Profile</a>
		  <a href="UserLogin.jsp">LogOut</a>
		</div>
		
       <div class = "hole">
       <br><br>
	      <div class = "middle">
	         <br><br>
	                <hr>
	                <h2>Employees Details</h2>
	                <hr>
	                
	                <table>
			<thead>
					<tr>
						<th>Employee_ID</th>
						<th>Name</th>
						<th>Address</th>
						<th>Phone</th>
						<th>email</th>
						<th>Designation</th>
						<th>DOB</th>
						<th>Salary</th>
					</tr>
				</thead>
				<tbody>
						<%
						
						try
						{
							Class.forName("com.mysql.jdbc.Driver");
							String userName = "root";
							String password = "5959865";
							String url = "jdbc:mysql://localhost:3307/emp_db";
							Connection con = DriverManager.getConnection(url,userName,password);
						    Statement stat = con.createStatement();  
							String query = "";
							String sql;
							if(query!=null)
							{
								
								sql = "select * from emp_db.employee";
								
							}
							else
							{
								sql = "select * from emp_db.employee";
								
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
								<td><a href='UpdateEmployee.jsp?id=<%=rs.getInt("idemployee")%>' class="update-btn">Update</a></td>
								<td>
								   <form action = "DeleteEmployee" method = "post">
								       <input type = "text" name = "id" value = "<%= rs.getInt("idemployee")%>" hidden>
								       
								       <input type = "submit" value = "Delete" class = "delete">
								   </form>
								</td>
								<td><a href='AddSalary.jsp?id=<%=rs.getInt("idemployee")%>' class="salary-btn">Add Salary</a></td>
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
	                <br>
	                
			     </div>
	         
	      </div>
    </div>
</body>
</html>