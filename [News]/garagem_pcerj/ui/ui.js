

function FecharGaragem() {
	$(".container").fadeOut();
	$(".container2").fadeOut();
	$("footer").html('');
	$(".ArsenalItens").html('');
    $.post('http://garagem_pcerj/fechar', JSON.stringify({}));
}

$(document).keyup(function(e) {
     if (e.key === "Escape") {
        FecharGaragem()
    }
});

$(document).ready(function() {
	$('.category_carro').click(function(){
		let pegCarro = $(this).attr('category');

		$('.carro-item').css('transform', 'scale(0)');
		function hideCarro(){
			$('.carro-item').hide();
		} setTimeout(hideCarro,400);

		function showCarro(){
			$('.carro-item[category="'+pegCarro+'"]').show();
			$('.carro-item[category="'+pegCarro+'"]').css('transform', 'scale(1)');
		} setTimeout(showCarro,400);
	});

	$('.category_carro[category="all"]').click(function(){
		function showAll(){
			$('.carro-item').show();
			$('.carro-item').css('transform', 'scale(1)');
		} setTimeout(showAll,400);
	});


	$("footer").on('click', '#retirar', function () {
		$(".container").fadeOut();
		$("footer").html('');
		$.post('http://garagem_pcerj/retirar', JSON.stringify({id: $(this).data('id')}));
	});

    window.addEventListener('message', function(event) {
        let data = event.data;
        if (data.show) {
			let garagem = data.veiculos
			
			$(".container").fadeIn();

			for (let i in garagem) {
				$("footer").append(`
					<div class="item carro-item" category="${garagem[i].veh_tipo}">
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