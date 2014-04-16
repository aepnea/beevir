// window.onload = function(){
// 	alert('hola')
// };


$(function(){
	$('.listar').on('click', mostrar);
	function mostrar(){
		$('.listaComunidades').slideToggle();
	}
});
$(function(){
	$('.formulario').hide();
	$('.ancla').on('click', mostrar);
	function mostrar(){
		$('.formulario').slideToggle();
	}
});

$(".ancla").click(function(){
	var vinculo = $(this).attr("href")
	var destino = $(vinculo).offset().top - 100;
	
$("html:not(:animated), body:not(:animated)").animate({scrollTop:destino}, 800)
	return false
})