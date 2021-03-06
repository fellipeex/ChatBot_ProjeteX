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
<title>CHAT BOT - S�o Judas</title>
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
	<c:import url="Menu.jsp" />

	<div class="container">
		<div class="conteudo">
			<h1>Chat Bot</h1>
			<p>Login Realizado com sucesso! (:</p>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="text-center">Como utilizar a ferramenta</h3>
				<p>Siga os passoas a seguir para um melhor funcionamento da ferramenta <br>
				Não esqueça que o chatbot irá aprender conforme as interações forem acontecendo.</p>
				<ul class="timeline">
					<li>
						<div class="timeline-image">
							<img class="img-circle img-responsive"
								src="http://lorempixel.com/250/250/cats/1" alt="">
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4>Primeiro Passo</h4>
								<h4 class="subheading">Criando as Reposta do Sistema</h4>
							</div>
							<div class="timeline-body">
								<p class="text-muted">Para que o sistema entenda o que o usuario esta escrevendo é necessaio que vc configure primeiro 
									algumas palavras chave. Por isso clique na aba ao lado no link de criar novas respsotas.
								</p>
							</div>
						</div>
						<div class="line"></div>
					</li>
					<li class="timeline-inverted">
						<div class="timeline-image">
							<img class="img-circle img-responsive"
								src="http://lorempixel.com/250/250/cats/2" alt="">
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4>Segundo Passo</h4>
								<h4 class="subheading">Subtitle</h4>
							</div>
							<div class="timeline-body">
								<p class="text-muted">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit, sed do eiusmod tempor incididunt
									ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
									nostrud exercitation ullamco laboris nisi ut aliquip ex ea
									commodo consequat.</p>
							</div>
						</div>
						<div class="line"></div>
					</li>
					<li>
						<div class="timeline-image">
							<img class="img-circle img-responsive"
								src="http://lorempixel.com/250/250/cats/3" alt="">
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4>Step Three</h4>
								<h4 class="subheading">Subtitle</h4>
							</div>
							<div class="timeline-body">
								<p class="text-muted">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit, sed do eiusmod tempor incididunt
									ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
									nostrud exercitation ullamco laboris nisi ut aliquip ex ea
									commodo consequat.</p>
							</div>
						</div>
						<div class="line"></div>
					</li>
					<li class="timeline-inverted">
						<div class="timeline-image">
							<img class="img-circle img-responsive"
								src="http://lorempixel.com/250/250/cats/4" alt="">
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4>Step Three</h4>
								<h4 class="subheading">Subtitle</h4>
							</div>
							<div class="timeline-body">
								<p class="text-muted">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit, sed do eiusmod tempor incididunt
									ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
									nostrud exercitation ullamco laboris nisi ut aliquip ex ea
									commodo consequat.</p>
							</div>
						</div>
						<div class="line"></div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<hr>

		<div class="container text-center">
			<div class="row">
				<div class="round hollow text-center chat-text">
					<a href="ChatBot.jsp" id="addClass"><span
						class="glyphicon glyphicon-comment"></span>Abrir ChatBot</a>
				</div>

				<hr>


			</div>
		</div>
</body>
<script>


</script>
<footer> </footer>
<script src="jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<script type="text/javascript" src="app.js"></script>
</html>