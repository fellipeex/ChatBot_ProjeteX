//js do chat
  $(function(){
$("#addClass").click(function () {
          $('#qnimate').addClass('popup-box-on');
            });
          
            $("#removeClass").click(function () {
          $('#qnimate').removeClass('popup-box-on');
            });
  })



console.log($( "#login" ));
$( "#teste" ).click(function() {
  console.log( "Handler for .click() called." );
});
    

//função do login
function Esconder(selected){
    var display = document.getElementById(selected).style.buttom;
    if(display == "3000px")
        display.style.buttom = "321px";
    else
        display.classList.remove();
}

// funçao do menu
$(function() {    
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
});

