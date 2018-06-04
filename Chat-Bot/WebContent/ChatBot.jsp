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
			<br>
			<p>Agora e so conversar...</p>
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



							<ul class="chat" id="chat">

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
										<p>Ola digite algo para comecarmos.</p>
									</div></li>

							</ul>



						</div>
						<div class="panel-footer">
							<div class="input-group">
								<form>
									<input id="mensagem" type="text" name="resposta"
										class="form-control input-lg"
										placeholder="Digite aqui sua mensagem..." /> <span
										class="input-group-btn"> <input
										class="btn btn-warning btn-sm" type="button" id="submit"
										value="Responder"> <!-- <button id="submit"
											type="submit" name="command" value="CriarResposta">Enviar</button> -->
									</span>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	
	
	<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Confirmar redirecionamento</h4>
        </div>
        <div class="modal-body">
          <p>Deseja entrar em contato com um de nossos atendentes?</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Nao</button>
          <a type="button" class="btn btn-success" href="FormContato.jsp">Sim</a>
        </div>
      </div>
      
    </div>
  </div>
	
	
	
	</div>
	
	
</body>

<footer> </footer>
<script src="http://code.jquery.com/jquery-3.3.1.min.js">
	
</script>
<script>
		$('#submit').click(enviaResposta);
		$('#successResposta').click(criaRespostaSuccess);
		var qntdResposta = [];
		var atdHumano;
	
		function gravaAtendimento(){
				data = Date.now;
				duracaoIntUsuario = qntdResposta.length;
				var encaminhado = atdHumano;
				if(duracaoIntUsuario >= 0 && duracaoIntUsuario <= 1 )	var tentativa = 1;
				if(duracaoIntUsuario >= 1 && duracaoIntUsuario < 2 )	var tentativa = 2;
				if(duracaoIntUsuario >= 2.)	var tentativa = 3;
				$.post('controller.do?command=CriarAtendimento',{data:data,tentativa:duracaoIntUsuario,encaminhado:encaminhado});
			}


		function enviaResposta(event) {
			var mensagem = $('#mensagem').val();
			$.post('controller.do?command=CriarResposta',{resposta:mensagem},function(data){
				novaPergunta(mensagem);
				var n = $(document).height();
				criaResposta(data);
				$(".panel-body").animate({ scrollTop: n }, 50);
				criaRespostaDefault();
				if(data.length > 3){
					console.log("array ta maior q 3 en zika");
				}
			});
			 $('#mensagem').val('');
			}
			
			function criaResposta(data){
				var corpo = '<li class="right clearfix" id="resposta">'
					+ '<span class="chat-img pull-right">'
					+ '<img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />'
					+ '</span><div class="chat-body clearfix"><div class="header"><small class=" text-muted">'
					+ '<span class="glyphicon glyphicon-time"></span>1 mins ago</small> <strong class="pull-right primary-font">'
					+ '<p>Sistema</p>'
					+ '</strong></div>'
					+ data[0].resposta
					var chat = $("#chat");
					chat.append(corpo).fadeIn(2000);;
					qntdResposta.push(corpo);
			}
			
			function criaRespostaDefault(){
				var corpo = '<li class="right clearfix" id="resposta">'
					+ '<span class="chat-img pull-right">'
					+ '<img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />'
					+ '</span><div class="chat-body clearfix"><div class="header"><small class=" text-muted">'
					+ '<span class="glyphicon glyphicon-time"></span>1 mins ago</small> <strong class="pull-right primary-font">'
					+ '<p>Sistema</p>'
					+ '</strong></div>'
					+ '<br>Satifeita com a Resposta ?</small>'
					+ '<button class="btn btn-warning btn-sm" id="successResposta"'
					+ 'data-toggle="modal" data-target="#myModal">Sim</button>'
					+ '<button class="btn btn-warning btn-sm" id="btn-chat"'
					+ 'name="command" value="RespostaValida">Nao</button>'
					+ '</div></li>';
					var chat = $("#chat");
					chat.append(corpo).fadeIn(2000);;
			}
			
			function criaRespostaSuccess(){
				var corpo = '<li class="right clearfix" id="resposta">'
					+ '<span class="chat-img pull-right">'
					+ '<img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />'
					+ '</span><div class="chat-body clearfix"><div class="header"><small class=" text-muted">'
					+ '<span class="glyphicon glyphicon-time"></span>15 mins ago</small> <strong class="pull-right primary-font">'
					+ '<p>Usuario</p>'
					+ '</strong></div>'
					+ '<p>Obrigado pelo contato!'
					+ '<button class="btn btn-warning btn-sm" id="btn-chat"'
					+ 'data-toggle="modal" data-target="#myModal">Enviar por Email</button>'
					+ '<button class="btn btn-warning btn-sm" id="fechar">Fechar</button>'
					+ '</div></li>';
					var chat = $("#chat");
					chat.append(corpo).fadeIn(2000);;
					gravaAtendimento;
					atdHumano = 'nao';			}
			
			
			function novaPergunta(mensagem){
				var corpoPergunta = '<li class="left clearfix">'
					+'<span class="chat-img pull-left">' 
					+'<img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />'
					+ '</span><div class="chat-body clearfix">'
					+ '<div class="header">'
					+ '<strong class="primary-font">Você</strong>'
					+ '<small class="pull-right text-muted"> <span class="glyphicon glyphicon-time">'
					+ '</span>14 mins ago </small> </div>'
					+ mensagem +'</div></li>';
					var chat = $("#chat");
				chat.append(corpoPergunta).fadeIn(2000);; 
				
			}
			
			
			

</script>
<script src="jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<script type="text/javascript" src="app.js"></script>

</html>