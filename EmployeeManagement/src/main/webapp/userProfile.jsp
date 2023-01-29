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
<title>myProfile</title>
<link rel = "stylesheet" href = "css/UserProfile.css">
<script src = "js/UserUpdate.js"></script>
</head>
<body>
 <%
     if(session.getAttribute("email")==null)
     {
    	 response.sendRedirect("UserLogin.jsp");
     }
 
  %>
  <br>
       <div class="topnav">
		  <a href="">Home</a>
		  <a href="AddNewEmployee.jsp">Add Employee</a>
		  <a href="ViewEmployee.jsp">View Employee</a>
		  <a href="ViewSalary.jsp">View Salary</a>
		  <a href="userProfile.jsp">Profile</a>
		  <a href="UserLogin.jsp">LogOut</a>
		</div>
	 
	 <br><br><br>
	 <div class = "middle">
	 	<h1>Admin Profile</h1>
	 	<h4>your user account details</h4>
	 	<hr>
	 	
	 	
	 	<br><br><br>
	   
	 	<form action = "userUpdate" method = "post">
		  <%
		   try {
			   
			    //int x = 4;
			    String mail = session.getAttribute("email").toString();
			   
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/emp_db","root","5959865");
				Statement stmt = con.createStatement();	
				ResultSet rs = stmt.executeQuery("select *from admin where email ='"+session.getAttribute("email").toString()+"'");
				
				while(rs.next()) {
			%>
			
	 	    <input type = "text" name = "id" required hidden value="<%=rs.getInt("idadmin")%>"> 
	 	
	 		<label>Full Name:</label><br>
	 		<input type = "text" name = "name" required value="<%=rs.getString("name")%>">
	 		<br><br>
	 		
	 		<label>Address:</label><br>
	 		<textarea type = "text" name = "address" required><%=rs.getString("address")%></textarea>
	 		<br><br>
	 		
	 		<label>Phone:</label><br>
	 		<input type = "number" name = "phone"  id = "phone" onInput = "checkPhone()" required value="<%=rs.getString("phone")%>">
	 		<br><span id = "check_phone"></span><br>
	 		
	 		<label>email:</label><br>
	 		<input type = "email" name = "email" required value="<%=rs.getString("email")%>">
	 		<br><br>
	 		
	 		
	 		<label>Password:</label><br>
	 		<input type = "password" name = "password" id = "password" onInput = "checkPassword()" required value="<%=rs.getString("password")%>">
	 		<br><span id = "check_password"></span><br>
	 		
	 		<label>Retype Password:</label><br>
	 		<input type = "password" name = "cpassword"  id = "cpassword" onInput = "checkcPassword()" required value="<%=rs.getString("password")%>">
	 	    <br><span id = "check_cpassword"></span><br>
	 	    
	 	    <input type = "submit" name = "register" value = "Update My Details" id = "update">
	 	    <br><br>
	 	    
	 	</form>
	 	
	 	<br>
	
	 	<div class = "delete">
		 	<form action = "deleteUser" method = "post" >
		 	   <input type = "text" name = "id" required hidden value="<%=rs.getInt("idadmin")%>"> 
		 	   <input type = "submit" name = "delete" value = "Delete My Account" onclick='delete_data()'>
		 	</form>
	 	</div>
	 	
	 	<br>
	 	 <% }
	   
		   }catch(Exception e){
			   e.printStackTrace();
		   }finally{
			   System.out.println("");
		   }
		 	
		  %>
	 </div>
	 <br><br>
	 </div>
	
</body>
</html>