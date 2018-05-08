
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="pt">
<meta charset="UTF-8">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Johan">
<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
<title>CHATBOT | ProjeteX</title>
<link rel="stylesheet" type="text/css" href="resourcers/css/estilo.css">
<link rel="stylesheet" type="text/css"
	href="https://bootswatch.com/3/flatly/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1"
	crossorigin="anonymous">

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
					<li class=""><a href="infr">Home</a></li>
					<li class=""><a href="tela-chat-bot.html">Chat Bot</a></li>
				</ul>

				<ul class="navbar-form navbar-right">
					<a href="#cadastro" class="btn btn-default">Inscrever-se</a>
					<a href="#" class="btn btn-info" id="teste">Login</a>
				</ul>
			</div>
		</div>
		<div id="wrapper">
			<div id="sidebar-wrapper">
				<ul class="sidebar-nav">
					
					
					<h5 class="text-left text-danger titulo-menu">Menu</h5>

					<li><a href="#">
							<div class="glyphicon glyphicon-chevron-right"></div>Informações
					</a></li>

					<li><a href="#">
							<div class="glyphicon glyphicon-chevron-right"></div> Para quem é
							esta plataforma
					</a></li>

					<li><a href="#">
							<div class="glyphicon glyphicon-chevron-right"></div> Acessar
							Chat Bot
					</a></li>
					<hr />
					<p class="container text-left">
						Para acessar a ferramenta <br /> você deverá estar logado. <br />
						<br /> <a href="#cadastro" class="btn btn-info btn-xs">Inscrever-se</a>
					</p>
				</ul>
			</div>
		</div>
	</nav>


	<!--painel de login-->
	<div class="login-botao" id="selected">
		<div class="account-wall">
			<img class="profile-img"
				src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
				alt="">
			<form action="controller.do" method="post" class="form-signin">
				<input type="email" name="email"class="form-control" placeholder="email" required
					autofocus>
				 <input name="senha" type="password" class="form-control"
					placeholder="senha" required>
				<button class="btn btn-lg btn-primary btn-block" type="submit" name="command" value="FazerLogind">
					Sign in</button>
			</form>
		</div>
	</div>



	<div class="container">
		<div class="inicio-texto">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						<div class="glyphicon glyphicon-hand-right"></div>
						Informações <small>
							<h5 class="pull-right">
								O que você poderá fazer com esta ferramenta <a href="#"
									class="btn btn-danger btn-xs"><i
									class="glyphicon glyphicon-question-sign" aria-hidden="true"></i></a>
							</h5>
						</small>
					</h1>
				</div>
			</div>
			<!-- Projects Row -->
			<div class="row">
				<div class="texto">
					<p>
						Com esta ferramenta você terá a sua disposição um bot que poderá
						responder todas suas duvidas, <br>alguém para conversar e
						ainda alguém que aprenderá tudo com você! (:
					</p>
				</div>
			</div>
		</div>
		<!-- Projects Row -->
		<div class="blog-section area-padding ">
			<div class="container">
				<div class="row text-center">
					<div class="col-sm-6 col-md-4">
						<div class="blog-box">
							<div class="blog-box-image">
								<img
									src="https://images.pexels.com/photos/6384/woman-hand-desk-office.jpg?w=940&h=650&auto=compress&cs=tinysrgb"
									class="img-responsive" alt="">
							</div>
							<div class="blog-box-content">
								<h4>
									<a href="#">Ações do Bot</a>
								</h4>
								<p>O bot realiza diversar funções a x por exemplo permite
									que ele te responda o que voce quiser perguntar.</p>
								<a href="" class="btn btn-default site-btn">Experimente!</a>
							</div>
						</div>
					</div>
					<!-- End Col -->
					<div class="col-sm-6 col-md-4">
						<div class="blog-box">
							<div class="blog-box-image">
								<img
									src="https://images.pexels.com/photos/374897/pexels-photo-374897.jpeg?w=940&h=650&auto=compress&cs=tinysrgb"
									class="img-responsive" alt="">
							</div>
							<div class="blog-box-content">
								<h4>
									<a hre	f="#">Recursos Fantasticos</a>
								</h4>
								<p>Graças a uma avançaada tecnologia de inteligencia
									artificial o seu bot podera consultar uma enorme base de dados
									feita por vc e poderá prever e responder suas principais
									duvidas.</p>
								<a href="" class="btn btn-default site-btn">Experimente!</a>
							</div>
						</div>
					</div>
					<!-- End Col -->
					<div class="col-sm-6 col-md-4">
						<div class="blog-box">
							<div class="blog-box-image">
								<img
									src="https://images.pexels.com/photos/541522/pexels-photo-541522.jpeg?w=940&h=650&auto=compress&cs=tinysrgb"
									class="img-responsive" alt="">
							</div>
							<div class="blog-box-content">
								<h4>
									<a href="#">Acesse de qualquer lugar</a>
								</h4>
								<p>ApÃ³s se inscrever você poderá acessar o seu bot de
									qualquer lugar do mundo de forma rápida e fácil sem necessidade
									de instalar nenhum software</p>
								<a href="#cadatrar" class="btn btn-default site-btn">Experimente!</a>
							</div>
						</div>
					</div>
					<!-- End Col -->
				</div>
				<!-- End Col -->
			</div>
			<!-- End Col -->

			<!-- Projects Row -->
			<div class="row" id="cadastro">
				<div class="col-lg-12">
					<h1 class="page-header">
						<div class="glyphicon glyphicon-thumbs-up"></div>
						Cadastro
						<div class="inscrevase">
							<div class="container">
								<div class="row">
									<div class="texto-inscrevase">
										<p>Inscreva-se para ter acesso a esta incrivel ferramenta
											e confira todas as vantagens de estar por dentro das
											novidades.</p>
									</div>
									<div
										class="col-xs-12 col-sm-12 col-md-4 well well-sm conteudo-inscrever">
										<legend>Inscreva-se para poder acessar (:</legend>
										<form action="ManterUsuario.do" method="post" class="form"
											role="form">
											<div class="row">
												<div class="col-xs-6 col-md-6">
													<input class="form-control" name="Pnome"
														placeholder="Primeiro Nome" type="text" required autofocus />
												</div>
												<div class="col-xs-6 col-md-6">
													<input class="form-control" name="Unome"
														placeholder="Ultimo Nome" type="text" required />
												</div>
											</div>
											<input class="form-control" name="email"
												placeholder="Seu Email" type="email" />
											<input class="form-control" name="" placeholder="Entre Novamente "
												type="email" />
											<input class="form-control" name="senha"
												placeholder="Nova Senha" type="password" />

											<button class="btn btn-lg btn-primary btn-block"
												type="submit" name="command" value="FazerLogin">Sign up</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</h1>
				</div>
			</div>
			<!-- Projects Row -->
		</div>
	</div>
</body>


<footer> </footer>

<script src="jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<script type="text/javascript" src="app.js"></script>
</html>