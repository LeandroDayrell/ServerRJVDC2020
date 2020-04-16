

function FecharGaragem() {
	$(".container").fadeOut();
	$(".container2").fadeOut();
	$("footer").html('');
	$(".ArsenalItens").html('');
    $.post('http://garagem_pmerj/fechar', JSON.stringify({}));
}

$(document).keyup(function(e) {
     if (e.key === "Escape") {
        FecharGaragem()
    }
});

$(document).ready(function() {
	$('.category_Heli').click(function(){
		let pegHeli = $(this).attr('category');

		$('.Heli-item').css('transform', 'scale(0)');
		function hideHeli(){
			$('.Heli-item').hide();
		} setTimeout(hideHeli,400);

		function showHeli(){
			$('.Heli-item[category="'+pegHeli+'"]').show();
			$('.Heli-item[category="'+pegHeli+'"]').css('transform', 'scale(1)');
		} setTimeout(showHeli,400);
	});

	$('.category_Heli[category="all"]').click(function(){
		function showAll(){
			$('.Heli-item').show();
			$('.Heli-item').css('transform', 'scale(1)');
		} setTimeout(showAll,400);
	});


	$("footer").on('click', '#retirar', function () {
		$(".container").fadeOut();
		$("footer").html('');
		$.post('http://garagem_pmerj/retirar', JSON.stringify({id: $(this).data('id')}));
	});

    window.addEventListener('message', function(event) {
        let data = event.data;
        if (data.show) {
			let garagem = data.veiculos
			
			$(".container").fadeIn();

			for (let i in garagem) {
				$("footer").append(`
					<div class="item Heli-item" category="${garagem[i].veh_tipo}">
						<div class="imagem" style="background-image: url(${garagem[i].img})">
							<center><button id="retirar" data-id="${garagem[i].modelo}">Retirar</button><center>
						</div>
						<div class="info">
							<strong>${garagem[i].nome}</strong><br>
							<span>${garagem[i].modelo}</span>
							<span id="estoque">${garagem[i].quantidade}</span>
						</div>
					</div>
				`);
			}
		}
    })
});