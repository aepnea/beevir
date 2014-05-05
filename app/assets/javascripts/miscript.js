$(function(){
	$('.avatar').on('click' , esconde);
	function esconde(){
		$('.tools').animate({width: 'toggle'});
	}

	$('.formulario').hide();
	$('.entrar').on('click', mostrar);
	function mostrar(){
		$('.formulario').slideToggle();
	}

	$(".mensajes").hide(); //start with the frst
		setInterval(function() {
			$(".asuntos, .mensajes").slideToggle();
	}, 3000);

	$( "#progressbar" ).progressbar({
		value: 50
	});

	$(".entrar").click(function() {

		$('html, body').animate({
			scrollTop: $(".formito").offset().top
		},1000);
	});


});