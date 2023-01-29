function checkOt() {
	
	var ot = document.getElementById("ot").value;
	
	
	if(ot < 0) {
		
		document.getElementById("check_ot").innerText = "Invalid OT Hours...!!!";
        document.getElementById("submit").disabled = true;
        
	} else {
		
		document.getElementById("check_ot").innerText = "";
        document.getElementById("submit").disabled = false;
        
	}
}

function checkCharge() {
	
	var charge = document.getElementById("charge").value;
	
	
	
	if(charge < 0) {
		
		document.getElementById("check_charge").innerText = "Invalid Charge...!!!";
        document.getElementById("submit").disabled = true;
        
	} else {
		
		document.getElementById("check_charge").innerText = "";
        document.getElementById("submit").disabled = false;
        
	}
}