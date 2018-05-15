<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
			<br>
			<p>Agora é só conversar...</p>
		</div>
	</div>
	<br>
	<br>
	<!--  chat bot -->
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<div class="chatbot">
					<div class="panel panel-primary ">
						<div class="panel-heading">
							<span class="glyphicon glyphicon-comment"></span> Chat

							<div class="btn-group pull-right">
								<button type="button"
									class="btn btn-default btn-xs dropdown-toggle"
									data-toggle="dropdown">
									<span class="glyphicon glyphicon-chevron-down"></span>
								</button>
								<ul class="dropdown-menu slidedown">
									<li><a href="http://www.jquery2dotnet.com"><span
											class="glyphicon glyphicon-refresh"> </span>Refresh</a></li>
									<li><a href="http://www.jquery2dotnet.com"><span
											class="glyphicon glyphicon-ok-sign"> </span>Available</a></li>
									<li><a href="http://www.jquery2dotnet.com"><span
											class="glyphicon glyphicon-remove"> </span>Busy</a></li>
									<li><a href="http://www.jquery2dotnet.com"><span
											class="glyphicon glyphicon-time"></span> Away</a></li>
									<li class="divider"></li>
									<li><a href="http://www.jquery2dotnet.com"><span
											class="glyphicon glyphicon-off"></span> Sign Out</a></li>
								</ul>
							</div>
						</div>
						<div class="panel-body">
							<ul class="chat">

								<li class="right clearfix"><span
									class="chat-img pull-right"> <img
										src="http://placehold.it/50/FA6F57/fff&text=ME"
										alt="User Avatar" class="img-circle" />
								</span>
									<div class="chat-body clearfix">
										<div class="header">
											<small class=" text-muted"><span
												class="glyphicon glyphicon-time"></span>15 mins ago</small> <strong
												class="pull-right primary-font">Bhaumik Patel</strong>
										</div>
										<p>Olá digite algo para começarmos.</p>
									</div></li>



								<c:if test="${not empty lista_pergunta}">
									<c:if test="${not empty lista_resposta}">
										<c:forEach var="mensagem" items="${lista_pergunta}">
											<c:forEach var="mensagemSist" items="${lista_resposta}">
												<li class="left clearfix"><span
													class="chat-img pull-left"> <img
														src="http://placehold.it/50/55C1E7/fff&text=U"
														alt="User Avatar" class="img-circle" />
												</span>
													<div class="chat-body clearfix">
														<div class="header">
															<strong class="primary-font">Jack Sparrow</strong> <small
																class="pull-right text-muted"> <span
																class="glyphicon glyphicon-time"></span>14 mins ago
															</small>
														</div>
														${mensagem.pergunta}
													</div></li>


												<li class="right clearfix"><span
													class="chat-img pull-right"> <img
														src="http://placehold.it/50/FA6F57/fff&text=ME"
														alt="User Avatar" class="img-circle" />
												</span>
													<div class="chat-body clearfix">
														<div class="header">
															<small class=" text-muted"><span
																class="glyphicon glyphicon-time"></span>15 mins ago</small> <strong
																class="pull-right primary-font">Bhaumik Patel</strong>
														</div>
														${mensagemSist.resposta}
														<button class="btn btn-warning btn-sm" id="btn-chat"
															name="command" value="RespostaNaoValida">Sim</button>
														<button class="btn btn-warning btn-sm" id="btn-chat"
															name="command" value="RespostaValida">Não</button>
													</div></li>
											</c:forEach>
										</c:forEach>


									</c:if>
								</c:if>
							</ul>
						</div>
						<div class="panel-footer">
							<div class="input-group">
								<form action="controller.do" method="post">
									<input id="btn-input" type="text" name="resposta"
										class="form-control input-sm"
										placeholder="Type your message here..." /> <span
										class="input-group-btn">
										<button class="btn btn-warning btn-sm" id="btn-chat"
											type="submit" name="command" value="CriarResposta">Enviar</button>
									</span>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<footer> </footer>
<script src="jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<script type="text/javascript" src="app.js"></script>
</html>
</html>