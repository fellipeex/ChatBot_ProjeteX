<!DOCTYPE html>
<html lang="fr-FR">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
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
	<c:import url="Menu.jsp"/>
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
				placeholder="Digite a sua dúvida e entraremos em contato em breve..."
				rows="5" id="comment"></textarea>
		</div>
	</div>
</body>

    <footer> </footer>
<script src="jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<script type="text/javascript" src="app.js"></script>
</html>