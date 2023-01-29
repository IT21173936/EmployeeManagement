function checkDescription() {
	
	var description = document.getElementById("description").value;
	
	
	if(description.length < 10) {
		
		document.getElementById("check_description").innerText = "Enter More Details";
        document.getElementById("submit").disabled = true;
        
	} else {
		
		document.getElementById("check_description").innerText = "";
        document.getElementById("submit").disabled = false;
        
	}
}

function checkDate() {
	
	var dates = document.getElementById("dates").value;
	
	
	
	if(dates <= 0) {
		
		document.getElementById("check_dates").innerText = "Invalid Number of dates...!!!";
        document.getElementById("submit").disabled = true;
        
	} else {
		
		document.getElementById("check_dates").innerText = "";
        document.getElementById("submit").disabled = false;
        
	}
}