function validateForm() {
    var ret = true;
    if (document.getElementById("rn").value == "") {
        document.getElementById("lbluser").innerText = "Username is required";
        ret = false;
    }
    else {
        document.getElementById("lbluser").innerText = "";
    }
    if (document.getElementById("remail").value == "") {
        document.getElementById("lblemail").innerText = "Email is required";
        ret = false;
    }
    else {
        document.getElementById("lblemail").innerText = "";
    }
    if (document.getElementById("rpass").value == "") {
        document.getElementById("lblpass").innerText = "Email is required";
        ret = false;
    }
    else {
        document.getElementById("lblpass").innerText = "";
    }
    if (document.getElementById("rcpass").value == "") {
        document.getElementById("lblcpass").innerText = "Email is required";
        ret = false;
    }
    else {
        document.getElementById("lblcpass").innerText = "";
    }
    return ret;

}