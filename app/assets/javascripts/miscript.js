$(function(){
	$('.formulario').hide();
	$('.entrar').on('click', mostrar);
	function mostrar(){
		$('.formulario').slideToggle();
	}
});

$(".entrar").click(function() {
    $('html, body').animate({
        scrollTop: $(".formito").offset().top
    }, 1000);
});