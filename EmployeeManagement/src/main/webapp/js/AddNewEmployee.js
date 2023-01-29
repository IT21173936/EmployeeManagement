function checkPhone() {
	
	var phone = document.getElementById("phone").value;
	
	
	if(phone.length == 10) {
		
		document.getElementById("check_phone").innerText = "";
        document.getElementById("submit").disabled = false;
        
	} else {
		
		document.getElementById("check_phone").innerText = "Invalid phone number...!!!";
        document.getElementById("submit").disabled = true;
        
	}
}

function checkSalary() {
	
	var salary = document.getElementById("salary").value;
	var charge;
	
	
	if(salary <= 0) {
		
		document.getElementById("check_salary").innerText = "Invalid Salary...!!!";
        document.getElementById("submit").disabled = true;
        
	} else {
		
		document.getElementById("check_salary").innerText = "";
        document.getElementById("submit").disabled = false;
        
	}
}