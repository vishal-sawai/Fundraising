// Navbar
const menu = document.getElementById('mobile-menu');
const toggle = () => menu.classList.toggle("hidden");


// data send to form
function cformdata(val1, val2) {
    document.getElementById("cid").value = val1;
    document.getElementById("camtitle").value = val2;
}



//form validation 
function validateForm() {
    var returnval = true;
    clearErrors();

    // Name
    var name = document.forms['myForm']["name"].value;
    if (name.length == 0) {
        seterror("name", "*name is required");
        returnval = false;
    } else if (!isNaN(name)) {
        seterror("name", "*Enter valid name");
        returnval = false;
    }
    // Email
    var email = document.forms['myForm']["email"].value;
    if (email.length == 0) {
        seterror("email", "*Email is required");
        returnval = false;
    }

    // phone
    var phone = document.forms['myForm']["phone"].value;
    if (phone.length == 0) {
        seterror("phone", "*phone no is required");
        returnval = false;
    } else if (phone.length != 10) {
        seterror("phone", "*Phone number should be of 10 digits!");
        returnval = false;
    } else if (isNaN(phone)) {
        seterror("phone", "*Enter only number");
        returnval = false;
    }

    // cause
    var cause = document.forms['myForm']["cause"].value;
    if (cause.length == 0) {
        seterror("cause", "*It is required");
        returnval = false;
    }

    // Address
    var address = document.forms['myForm']["address"].value;
    if (address.length == 0) {
        seterror("address", "*It is required");
        returnval = false;
    }
    // Story
    var story = document.forms['myForm']["story"].value;
    if (story.length == 0) {
        seterror("story", "*It is required");
        returnval = false;
    }
    // amount
    var amount = document.forms['myForm']["amount"].value;
    if (amount.length = 0) {
        seterror("amount", "*amount is requored");
        returnval = false;
    } else if (amount == 0) {
        seterror("amount", "*amount shoud be greter than 0");
        returnval = false;
    } else if (isNaN(amount)) {
        seterror("amount", "*Enter only number");
        returnval = false;
    }

    return returnval;
}

//form validation 
function donationvalidateForm() {
    var returnval = true;
    clearErrors();

    // Name
    var dname = document.forms['dmyForm']["dname"].value;
    if (dname.length == 0) {
        seterror("dname", "*name is required");
        returnval = false;
    } else if (!isNaN(dname)) {
        seterror("dname", "*Enter valid name");
        returnval = false;
    }
    // Email
    var demail = document.forms['dmyForm']["demail"].value;
    if (demail.length == 0) {
        seterror("demail", "*Email is required");
        returnval = false;
    }

    // phone
    var dphone = document.forms['dmyForm']["dphone"].value;
    if (dphone.length == 0) {
        seterror("dphone", "*phone no is required");
        returnval = false;
    } else if (dphone.length != 10) {
        seterror("dphone", "*Phone number should be of 10 digits!");
        returnval = false;
    } else if (isNaN(dphone)) {
        seterror("dphone", "*Enter only number");
        returnval = false;
    }

    // Address
    var daddress = document.forms['dmyForm']["daddress"].value;
    if (daddress.length == 0) {
        seterror("daddress", "*It is required");
        returnval = false;
    }

    // amount
    var damount = document.forms['dmyForm']["damount"].value;
    if (damount.length = 0) {
        seterror("damount", "*amount is requored");
        returnval = false;
    } else if (damount == 0) {
        seterror("damount", "*amount shoud be greter than 0");
        returnval = false;
    } else if (isNaN(damount)) {
        seterror("damount", "*Enter only number");
        returnval = false;
    }

    return returnval;
}

// validation form error clears
function clearErrors() {
    errors = document.getElementsByClassName('formerror');
    for (let item of errors) {
        item.innerHTML = "";
    }
}

function seterror(id, error) {
    //sets error inside tag of id 
    element = document.getElementById(id);
    element.getElementsByClassName('formerror')[0].innerHTML = error;
}
