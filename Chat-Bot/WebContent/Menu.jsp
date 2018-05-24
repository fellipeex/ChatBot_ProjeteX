
<script>
	$(document).ready(function() {
		$("button1").click(function() {
			$("login-botao").toggle();
		});
	});
</script>

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
				<li class=""><a href="tela-chat-bot.jsp">Chat Bot</a></li>
			</ul>

			<ul class="navbar-form navbar-right">
				<a href="Cadastro.jsp" class="btn btn-default">Inscrever-se</a>
				<button class="btn btn-info"data-toggle="collapse" data-target="#demo">Login</button>
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

				<li><a href="ChatBot.jsp">
						<div class="glyphicon glyphicon-chevron-right"></div> ChatBot
				</a></li>

				<li><a href="Cadastro.jsp">
						<div class="glyphicon glyphicon-chevron-right"></div> Se Cadastrar
				</a></li>

				<li><a href="Relatorios.jsp">
						<div class="glyphicon glyphicon-chevron-right"></div> Acessar
						Relatórios
				</a></li>
				<li><a href="CriarRespostas.jsp">
						<div class="glyphicon glyphicon-chevron-right"></div> Criar
						Respostas
				</a></li>
				<hr />
				<p class="container text-left">
					Para acessar a ferramenta <br /> você deverá estar logado. <br />
					<br /> <a href="Cadastro.jsp" class="btn btn-info btn-xs">Inscrever-se</a>
				</p>
			</ul>
		</div>
	</div>
</nav>

<!--painel de login-->
<div class="collapse" id="demo" style="width:30em; margin-left:40%; position:fixed;z-index:1000">
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