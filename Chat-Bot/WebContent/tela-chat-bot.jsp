<!DOCTYPE html>
<html lang="fr-FR">

<head>
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

<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
</head>

<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand point" id="menu-toggle"><i
				id="menu-toggle" class="fa fa-bars" aria-hidden="true"></i></a> <a
				class="navbar-brand" href="#"> CHAT BOT</a>
		</div>
		<div class="container-fluid">
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class=""><a href="index.jsp">Home</a></li>
				</ul>
			</div>
		</div>
		<div id="wrapper">
			<div id="sidebar-wrapper">
				<ul class="sidebar-nav">
					<li><a>Olá ${usuario.nome}</a></li>
					<li><a id="exibir" class="" href=""><i class="fa fa-fire"
							aria-hidden="true"></i> Logar-se</a></li>
					<hr />
					<h5 class="text-left text-danger titulo-menu">Menu</h5>

					<li><a href="#">
							<div class="glyphicon glyphicon-chevron-right"></div>Informações
					</a></li>

					<li><a href="#">
							<div class="glyphicon glyphicon-chevron-right"></div> Relatórios
							de uso
					</a></li>
					<hr />
					<p class="container text-left">
						Clique aqui para acessar o chatbot. <br /> <br /> <a href="#"
							class="btn btn-info btn-xs">Chat</a>
					</p>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="conteudo">
			<h1>Chat Bot</h1>
			<p>Login Realizado com sucesso! (:</p>
		</div>
	</div>


	<div class="container text-center">
		<div class="row">
			<div class="round hollow text-center chat-text">
				<a href="#" id="addClass"><span
					class="glyphicon glyphicon-comment"></span>Abrir Chat </a>
			</div>

			<hr>


			<div class="tabela">
				<h2>RelatÃ³rios de usabilidade</h2>
				<div class="panel panel-default tabela-estilo">
					<!-- Default panel contents -->
					<div class="panel-heading">Panel heading</div>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">First</th>
								<th scope="col">Last</th>
								<th scope="col">Handle</th>
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
	</div>
	<div class="container">

		<h2>Digite sua dúvida que nao foi respondida</h2>

		<div class="formulario-contato">

			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1">@</span> <input
					type="text" class="form-control" placeholder="Nome de usuário..."
					aria-describedby="basic-addon1">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon" id="assunto">@</span> <input
					type="text" class="form-control" placeholder="Assunto"
					aria-describedby="basic-addon1">
			</div>
			<br> <label for="comment">Comment:</label>
			<textarea class="form-control"
				placeholder="Digite a sua dÃºvida e entraremos em contato em breve..."
				rows="5" id="comment"></textarea>
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

		<!-- mensagems do chat -->
		<div class="popup-messages">
			<div class="direct-chat-messages">
				<!-- Message. Default to the left -->
				<div class="direct-chat-msg doted-border">
					<div class="direct-chat-info clearfix">
						<span class="direct-chat-name pull-left">Mensagem do
							Sistema</span>
					</div>
					<!-- /.direct-chat-info -->
					<img alt="message user image"
						src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
						class="direct-chat-img">
					<!-- /.direct-chat-img -->
					<div class="direct-chat-text">
						Olá, seja bem vindo! <br /> Digite o número da sua dúvida! <br />
						1 - Quero conhecer a Ferramenta; <br> 2 - Não sei o que
						perguntar ;,/ <br /> 3 - Quero contratar um serviço
					</div>
					<div class="direct-chat-info clearfix">
						<span class="direct-chat-timestamp pull-right">Hora ñ
							informada</span>
					</div>
					<div class="direct-chat-info clearfix">
						<span class="direct-chat-img-reply-small pull-left"> </span> <span
							class="direct-chat-reply-name">Recebida</span>
					</div>
					<!-- /.direct-chat-text -->
				</div>
				<!-- /.direct-chat-msg -->

				<div class="chat-box-single-line">
					<abbr class="timestamp">October 9th, 2015</abbr>
				</div>

				<!-- Message. Default to the left -->
				<div class="direct-chat-msg doted-border">
					<div class="direct-chat-info clearfix">
						<span class="direct-chat-name pull-left">Mensagem do
							Sistema</span>
					</div>
					<!-- /.direct-chat-info -->
					<img alt="message user image"
						src="http://bootsnipp.com/img/avatars/bcf1c0d13e5500875fdd5a7e8ad9752ee16e7462.jpg"
						class="direct-chat-img">
					<!-- /.direct-chat-img -->
					<div class="direct-chat-text">Resposta do usuario: 1</div>
					<div class="direct-chat-info clearfix">
						<span class="direct-chat-timestamp pull-right">Hora ñ
							informada</span>
					</div>
					<div class="direct-chat-info clearfix">
						<span class="direct-chat-img-reply-small pull-left"> </span> <span
							class="direct-chat-reply-name">Enviada</span>
					</div>
					<!-- /.direct-chat-text -->
				</div>
				<!-- /.direct-chat-msg -->
			</div>
		</div>


		<div class="popup-messages-footer">
			<form action="EnviarMensagem.do">
				<input type="text" class="form-control" placeholder="Digite sua mensagem..." rows="10" cols="40" required
				autofocus>
				
				<button class="bg_none pull-right">
					<i class="glyphicon glyphicon-thumbs-up"></i>
				</button>
			</form>
		</div>
	</div>
	</div>
</body>

<footer> </footer>
<script src="jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<script type="text/javascript" src="app.js"></script>
</html>