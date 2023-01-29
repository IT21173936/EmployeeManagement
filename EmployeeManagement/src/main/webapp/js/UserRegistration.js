function checkPassword() {
	var password = document.getElementById("password").value;
	   

    if (password.length <=5) {

        document.getElementById("check_password").innerText = "Enter more than 5 digits";
        document.getElementById("register").disabled = true;
       
    } 

    else {
        document.getElementById("check_password").innerText = "";
        document.getElementById("register").disabled = false;
    }
}

function checkcPassword() {
	var password = document.getElementById("password").value;
	var cpassword = document.getElementById("cpassword").value;   

    if (password === cpassword) {

        document.getElementById("check_cpassword").innerText = "";
        document.getElementById("register").disabled = false;
       
    } 

    else {
        document.getElementById("check_cpassword").innerText = "Password miss match..!!!";
        document.getElementById("register").disabled = true;
    }
}

function checkPhone() {
	var phone = document.getElementById("phone").value;
	   

    if ((phone.length < 10) || (phone.length > 10)) {

        document.getElementById("check_phone").innerText = "Invalid phone number...!!";
        document.getElementById("register").disabled = true;
       
    } 

    else {
        document.getElementById("check_phone").innerText = "";
        document.getElementById("register").disabled = false;
    }
}