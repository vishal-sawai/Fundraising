// Navbar
const menu = document.getElementById('mobile-menu');
const toggle = () => menu.classList.toggle("hidden");


// data send to form
function cformdata(val1, val2) {
    document.getElementById("cid").value = val1;
    document.getElementById("camtitle").value = val2;
}