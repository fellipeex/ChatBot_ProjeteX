
$("#teste" ).click(function() {
	 $("button").click(function(){
	        $(".login-botao").toggle();
	    });
});
    

//função do login
function Esconder(selected){
    
}

// funçao do menu
$(function() {    
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
});

