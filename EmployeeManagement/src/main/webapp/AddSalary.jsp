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
<title>Add Salary</title>
<link rel = "stylesheet" href = "css/AddSalary.css">
<script src = "js/AddSalary.js"></script>
</head>
<body>

<%
String id = null;
String name = null;
String salary = null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	String userName = "root";
	String password = "5959865";
	String url = "jdbc:mysql://localhost:3307/emp_db";
	Connection con = DriverManager.getConnection(url,userName,password);
    Statement stat = con.createStatement();  
	String query = request.getParameter("id");
	String sql;
	if(query!=null)
	{
		
		sql = "select * from emp_db.employee where idemployee ="+request.getParameter("id");
		System.out.println("Pass");
		
	}
	else
	{
		sql = "select * from emp_db.employee";
		
	}
	ResultSet rs = stat.executeQuery(sql);
	

   id = request.getParameter("id");

	
	while(rs.next())
	{
		
	name = rs.getString(2);
	salary = rs.getString(8); 
	
	}
	
}
catch(Exception e)
{
	out.println("Exception :"+e.getMessage());
	e.printStackTrace();
}

%>
<br>
		<div class="topnav">
		  <a class="first" href="">Home</a>
		  <a href="AddNewEmployee.jsp">Add Employee</a>
		  <a href="ViewEmployee.jsp">View Employee</a>
		  <a href="ViewSalary.jsp">View Salary</a>
		  <a href="ViewLeave.jsp">View Leave</a>
		  <a href="">Profile</a>
		  <a href="">LogOut</a>
		</div>
		
       <div class = "hole">
       <br><br>
	      <div class = "middle">
	         <br><br>
	                <h2>Add Employees Salary Details</h2>
	                <hr>
	                <br>
	                <form method = "post" action = "AddSalary">
	                   
	                   <label>Employee Id</label><br>
	                   <input type = "text" name = "id" required value = "<%= id%>" readonly><br><br>
	                   
	                   <label>Employee Name</label><br>
	                   <input type = "text" name = "name" required value = "<%= name%>"readonly><br><br>
	                   
	                   <label>Basic Salary</label><br>
	                   <input type = "number" name = "salary" value = "<%= salary%>" required readonly><br>
	                  
	                   
	                   <label>OT Hrs</label><br>
	                   <input type = "number" name = "ot" id = "ot" onInput = "checkOt()" required><br>
	                   <br><span id = "check_ot"></span><br>
	                   
	                   <label>Extra Charge</label><br>
	                   <input type = "number" name = "charge" id = "charge" onInput = "checkCharge()" required><br>
	                   <br><span id = "check_charge"></span><br>
	                   
	                    <label>Date</label><br>
	                    <input type = "date" name = "date" required><br><br>
	                   
	                    <span id = "check_monthlysalary"></span><br>
	                  
	                   <input type = "submit" value = "Add Monthly Salary" name = "submit" id = "submit"><br><br>
	                </form>
			     </div>
	         
	      </div>
    </div>
</body>
</html>