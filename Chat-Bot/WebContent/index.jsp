
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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


<nav class="navbar navbar-default navbar-fixed-top">
	<div class="navbar-header">

		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#navbar" aria-expanded="false"
			aria-controls="navbar">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand point" id="menu-toggle"><i id="menu-toggle"
			class="fa fa-bars" aria-hidden="true"></i></a> <a class="navbar-brand"
			href="#"> CHAT BOT</a>
	</div>
	<div class="container-fluid">
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class=""><a href="index.jsp">Home</a></li>
			</ul>

			<ul class="navbar-form navbar-right">
				<a href="Cadastro.jsp" class="btn btn-default">Inscrever-se</a>
				<button class="btn btn-info" data-toggle="collapse"
					data-target="#demo">Login</button>
			</ul>
		</div>
	</div>
</nav>


<!--painel de login-->
<div class="collapse" id="demo"
	style="width: 30em; margin-left: 40%; position: fixed; z-index: 1000">
	<div class="account-wall">
		<img class="profile-img"
			src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
			alt="">
		<form action="controller.do" method="post" class="form-signin">
			<input type="email" name="email" class="form-control"
				placeholder="email" required autofocus> <input name="senha"
				type="password" class="form-control" placeholder="senha" required>
			<button class="button1 btn btn-lg btn-primary btn-block"
				type="submit" name="command" value="FazerLogin">Sign in</button>
		</form>
	</div>
</div>

<div class="container">
	<div class="inicio-texto">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					<div class="glyphicon glyphicon-hand-right"></div>
					Informacoes <small>
						<h5 class="pull-right">
							O que voce podera fazer com esta ferramenta <a href="#"
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
					Com esta ferramenta voc� ter� a sua disposi��o um bot que poder�
					responder todas suas duvidas, <br>algu�m para conversar e
					ainda algu�m que aprender� tudo com voc�! (:
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
								<a href="#">A��es do Bot</a>
							</h4>
							<p>O bot realiza diversar fun��es a x por exemplo permite que
								ele te responda o que voce quiser perguntar.</p>
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
								<a hre f="#">Recursos Fantasticos</a>
							</h4>
							<p>Graças a uma avançada tecnologia de inteligencia
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
							<p>Após se inscrever voc� poder� acessar o seu bot de
								qualquer lugar do mundo de forma r�pida e f�cil sem necessidade
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

	</div>
</div>
</body>
<br>
<br>
<br>
<br>


<footer> </footer>

<script src="jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<script type="text/javascript" src="app.js"></script>
</html>