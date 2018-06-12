<!DOCTYPE html>
<html lang="fr-FR">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Youtube">
<meta name="author" content="Johan">
<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
<title>CHAT BOT - São Judas</title>
<link rel="stylesheet" href="resourcers/css/estilo.css">
<link rel="stylesheet" type="text/css"
	href="https://bootswatch.com/3/flatly/bootstrap.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1"
	crossorigin="anonymous">
<script type="text/javascript" src="resourcers/js/app.js"></script>
<!--Load the AJAX API-->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	// Load the Visualization API and the corechart package.
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});

	// Set a callback to run when the Google Visualization API is loaded.
	google.charts.setOnLoadCallback(drawChart);

	// Callback that creates and populates a data table,
	// instantiates the pie chart, passes in the data and
	// draws it.
	function drawChart() {

		// Create the data table.
		var data = new google.visualization.DataTable();
		data.addColumn('string', 'Topping');
		data.addColumn('number', 'Slices');
		data.addRows([ [ 'Mushrooms', 3 ], [ 'Onions', 1 ], [ 'Olives', 1 ],
				[ 'Zucchini', 1 ], [ 'Pepperoni', 2 ] ]);

		// Set chart options
		var options = {
			'title' : 'How Much Pizza I Ate Last Night',
			'width' : 400,
			'height' : 300
		};

		// Instantiate and draw our chart, passing in some options.
		var chart = new google.visualization.PieChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);
	}
</script>
</head>

<body>
	<c:import url="Menu.jsp" />

	<div class="container">
		<div class="conteudo">
			<h1>Relatorios do Chat Bot</h1>
			<p>Confira os Relatoris do ChatBot</p>

			<div class="row">
				<div class="col-md-3">
					<br> <br>
					<p>Selecione ao lado a periodicidade e clique no botao Carregar
						para atualizar os dados.</p>
				</div>

				<div class="col-md-9">
					<div class="panel">
						<table class="table table-header-rotated ">
							<thead>
								<tr>
									<!-- First column header is not rotated -->
									<th></th>
									<!-- Following headers are rotated -->
									<th class="rotate"><div>
											<span>Periodicidade:</span>
										</div></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="row-header">Mensal</th>
									<td><input checked="checked" name="radio" type="radio"
										value="mes"></td>
								</tr>
								<tr>
									<th class="row-header">Semanal</th>
									<td><input name="radio" type="radio"
										value="sem"></td>
								</tr>
								<tr>
									<th class="row-header">Diário</th>
									<td><input name="radio" type="radio"
										value="dia"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<input class="btn btn-sm btn-primary btn-block" id="submit" type="button" value="Atualizar Dados"/>

				</div>
			</div>
		</div>


		<div class="tabela">
			<h2>Relatórios de usabilidade</h2>
			<div class="panel panel-default tabela-estilo">
				<!-- Default panel contents -->
				<div class="panel-heading">Informações do Atendimento</div>
				<table class="table">
					<thead>
						<tr>
							<th scope="col"># Atendimento</th>
							<th scope="col">Data:</th>
							<th scope="col">Duração:</th>
							<th scope="col">Quantidade de Interações:</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Mark</td>
							<td>Mark</td>
							<td>Mark</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Jacob</td>
							<td>Mark</td>
							<td>Mark</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Larry</td>
							<td>Mark</td>
							<td>Mark</td>

						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<div class="tabela">
			<h2>Relatórios de usabilidade</h2>
			<div class="panel panel-default tabela-estilo">
				<!-- Default panel contents -->
				<div class="panel-heading">Panel heading</div>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Qtd de Atendimentos Resolvidos 1 Tentativa:</th>
							<th scope="col">Qtd de Atendimentos Resolvidos 2 Tentativa:</th>
							<th scope="col">Qtd de Atendimentos Resolvidos 3 Tentativa:</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Mark</td>
							<td>Otto</td>
							<td>@mdo</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Jacob</td>
							<td>Thornton</td>
							<td>@fat</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Larry</td>
							<td>the Bird</td>
							<td>@twitter</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="popup-box chat-popup" id="qnimate">
		<div class="popup-head">
			<div class="popup-head-left pull-left">
				<img
					src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120">${suario.nome}
			</div>
			<div class="popup-head-right pull-right">
				<div class="btn-group">
					<button class="chat-header-button" data-toggle="dropdown"
						type="button" aria-expanded="false">
						<i class="glyphicon glyphicon-cog"></i>
					</button>
					<ul role="menu" class="dropdown-menu pull-right">
						<li><a href="#">Media</a></li>
						<li><a href="#">Block</a></li>
						<li><a href="#">Clear Chat</a></li>
						<li><a href="#">Email Chat</a></li>
					</ul>
				</div>

				<button data-widget="remove" id="removeClass"
					class="chat-header-button pull-right" type="button">
					<i class="glyphicon glyphicon-off"></i>
				</button>
			</div>
		</div>
	</div>


	<!--Div that will hold the pie chart-->
	<div class="g-pizza">

		<div id="chart_div"></div>
	</div>
</body>

<footer> </footer>

<script>
	$('#submit').click(function(){
		console.log("dsadsa");
		carregaRelatorio();
	});
	var peri = $("input[name='radio']:checked").val();
	
	function carregaRelatorio(){
		$.post('controller.do?command=CriarRelatorio',{peri:peri},function(data){
			preencheColunas(data);
		});
	}
	
	function preencheColunas(data){
		
		$.each(data,function(){
			console.log(data);
		});
	}
	
</script>
<script src="jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
</html>






































