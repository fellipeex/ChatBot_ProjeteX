
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

<body>
<c:import url="Menu.jsp"/>

	<!--painel de login-->
	<div class="login-botao" id="selected">
		<div class="account-wall">
			<img class="profile-img"
				src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
				alt="">
			<form action="controller.do" method="post" class="form-signin">
				<input type="email" name="email" class="form-control"
					placeholder="email" required autofocus> <input name="senha"
					type="password" class="form-control" placeholder="senha" required>
				<button class="btn btn-lg btn-primary btn-block" type="submit"
					name="command" value="FazerLogin">Sign in</button>
			</form>
		</div>
	</div>

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
								<p>Inscreva-se para ter acesso a esta incrivel ferramenta e
									confira todas as vantagens de estar por dentro das novidades.</p>
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
										placeholder="Seu Email" type="email" /> <input
										class="form-control" name="" placeholder="Entre Novamente "
										type="email" /> <input class="form-control" name="senha"
										placeholder="Nova Senha" type="password" />

									<button class="btn btn-lg btn-primary btn-block" type="submit"
										name="command" value="FazerLogin">Sign up</button>
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