<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>userRegistration</title>
<link rel = "stylesheet" href = "css/UserRegistration.css">
<script src = "js/UserRegistration.js"></script>
</head>
<body>
	
	
	 <br><br><br>
	 <div class = "middle">
	 	<h1>Admin Registration</h1>
	 	<h4>enter your user account details</h4>
	 	<hr>
	 	
	 	
	 	<br>
	 	<form action = "userRegistration" method = "post">
	 		<label>Full Name:</label><br>
	 		<input type = "text" name = "name" required>
	 		<br><br>
	 		
	 		<label>Address:</label><br>
	 		<textarea type = "text" name = "address" required></textarea>
	 		<br><br>
	 		
	 		<label>Phone:</label><br>
	 		<input type = "number" name = "phone"  id = "phone" onInput = "checkPhone()" required>
	 		<br><span id = "check_phone"></span><br>
	 		
	 		<label>email:</label><br>
	 		<input type = "email" name = "email" required>
	 		<br><br>
	 		
	 		<label>Password:</label><br>
	 		<input type = "password" name = "password" id = "password" onInput = "checkPassword()" required>
	 		<br><span id = "check_password"></span><br>
	 		
	 		<label>Retype Password:</label><br>
	 		<input type = "password" name = "cpassword"  id = "cpassword" onInput = "checkcPassword()" required>
	 	    <br><span id = "check_cpassword"></span><br>
	 	    
	 	    <input type = "submit" name = "register" value = "Register" id = "register">
	 	    <br><br>
	 	    
	 	</form>
	 	
	 	<br>
	 	<center><a href = "UserLogin.jsp">Already You Have an Account.. Click This</a></center>
	 </div>
	 <br><br>
	 </div>
	 
	 
</body>
</html>