<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>userLogin</title>
<link rel = "stylesheet" href = "css/UserLogin.css">
</head>
<body>
   
	
	 <br><br><br>
	 <div class = "middle">
	 	<h1>Admin Login</h1>
	 	<h4>enter your user details for unlock the account</h4>
	 	<hr>
	 	
	 	
	 	<br><br><br>
	 	<form action = "userLogin" method = "post">
	 		
	 		
	 		<label>Username:</label><br>
	 		<input type = "email" name = "email" required placeholder = "abc@gmail.com">
	 		<br><br>
	 		
	 		<label>Password:</label><br>
	 		<input type = "password" name = "password" required placeholder = "*************">
	 		<br><br>
	 		
	 	    
	 	    <input type = "submit" name = "register" value = "Login">
	 	    <br><br>
	 	    
	 	</form>
	 	
	 	<br>
	 	<center><a href = "UserRegistration.jsp">Not Account Yet.. Click This</a></center>
	 </div>
	 <br><br>
	 </div>
	 <br><br>
	 
</body>
</html>