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
<title>View Salary</title>
<link rel = "stylesheet" href = "css/ViewSalary.css">
</head>
<body>
<br>
		<div class="topnav">
		  <a class="first" href="">Home</a>
		  <a href="AddNewEmployee.jsp">Add Employee</a>
		  <a href="ViewEmployee.jsp">View Employee</a>
		  <a href="">View Salary</a>
		  <a href="userProfile.jsp">Profile</a>
		  <a href="UserLogin.jsp">LogOut</a>
		</div>
		
       <div class = "hole">
       <br><br>
	      <div class = "middle">
	         <br><br>
	                <hr>
	                <h2>Employees Salary Details</h2>
	                <hr>
	                
	                <table>
			<thead>
					<tr>
						<th>Employee Id</th>
						<th>Employee Name</th>
						<th>Basic Salary</th>
						<th>OT Hrs</th>
						<th>Extra Charge</th>
						<th>Date</th>
						<th>Monthly Salary</th>
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
								
								sql = "select * from emp_db.salary";
								
							}
							else
							{
								sql = "select * from emp_db.salary";
								
							}
							ResultSet rs = stat.executeQuery(sql);
							
							
							while(rs.next())
							{
								%>
							<tr>	
								<td><%=rs.getInt(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=rs.getString(4) %></td>
								<td><%=rs.getString(5) %></td>
								<td><%=rs.getString(6) %></td>
								<td><%=rs.getString(7) %></td>
								<td><%=rs.getString(8) %></td>
								<td><a href='UpdateSalary.jsp?id=<%=rs.getInt("idsalary")%>' class="update-btn">Update</a></td>
								<td>
								   <form action = "DeleteSalary" method = "post">
								       <input type = "text" name = "id" value = "<%= rs.getInt("idsalary")%>" hidden>
								       
								       <input type = "submit" value = "Delete" class = "delete">
								   </form>
								</td>
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