$(function() {    
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
});

var nav = document.getElementById("nav");
var showMenu = document.getElementById("showMenu");
var hideMenu = document.getElementById("hideMenu");
showMenu.addEventListener("click", function () {
  nav.classList.add("show");
});

hideMenu.addEventListener("click", function () {
  nav.classList.remove("show");
});