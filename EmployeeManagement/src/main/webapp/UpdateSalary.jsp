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
<title>Update Salary</title>
<link rel = "stylesheet" href = "css/AddSalary.css">
<script src = "js/AddSalary.js"></script>
</head>
<body>

<%
String sid = null;
String eid = null;
String name = null;
String salary = null;
String ot = null;
String excharge = null;
String date = null;
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
		
		sql = "select * from emp_db.salary where idsalary ="+request.getParameter("id");
		System.out.println("Pass");
		
	}
	else
	{
		sql = "select * from emp_db.salary";
		
	}
	ResultSet rs = stat.executeQuery(sql);
	

   sid = request.getParameter("id");

	
	while(rs.next())
	{
		
	eid = rs.getString(2);
	name = rs.getString(3);
	salary = rs.getString(4);
	ot = rs.getString(5);
	excharge = rs.getString(6);
	date = rs.getString(7);
	
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
	                <h2>Update Employees Salary Details</h2>
	                <hr>
	                <br>
	                <form method = "post" action = "UpdateSalary">
	                   
	                   <input type = "text" name = "sid" required value = "<%= sid%>" hidden><br><br>
	                   <label>Employee Id</label><br>
	                   <input type = "text" name = "eid" required value = "<%= eid%>" readonly><br><br>
	                   
	                   <label>Employee Name</label><br>
	                   <input type = "text" name = "name" required value = "<%= name%>" readonly><br><br>
	                   
	                   <label>Basic Salary</label><br>
	                   <input type = "number" name = "salary" value = "<%= salary%>" required readonly><br>
	                  
	                   
	                   <label>OT Hrs</label><br>
	                   <input type = "number" name = "ot" id = "ot" onInput = "checkOt()" value = "<%= ot%>" required><br>
	                   <br><span id = "check_ot"></span><br>
	                   
	                   <label>Extra Charge</label><br>
	                   <input type = "number" name = "charge" id = "charge" onInput = "checkCharge()" value = "<%= excharge%>" required><br>
	                   <br><span id = "check_charge"></span><br>
	                   
	                    <label>Date</label><br>
	                    <input type = "date" name = "date" value = "<%= date%>" required><br><br>
	                   
	                    
	                  
	                   <input type = "submit" value = "Update Monthly Salary" name = "submit" id = "submit"><br><br>
	                </form>
			     </div>
	         
	      </div>
    </div>
</body>
</html>