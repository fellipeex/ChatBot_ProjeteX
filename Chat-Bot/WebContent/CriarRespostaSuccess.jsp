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
<c:import url="Menu.jsp"/>
	<div class="container">
		<div class="conteudo">
			<h1>Chat Bot</h1>
			<p>Crie as respostas que deveram ser mostradas para os usuários! (:</p>
			<p>Cadastre as palavras chaves e em seguida a resposta que o sistema dará!</p>
			<br>
			Resposta Cadastrada com sucesso!
		</div>
    </div>
    <br>
    <br>
	<div class="container">
             <form class="form-horizontal" action="" method="post">
          <fieldset>
            <legend class="text-center">Digite a Seguir as respostas que serão dadas aos usuarios!</legend>
              <br>
    
            <!-- Email input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="email">Pergunta do Usuario:</label>
             <div class="col-md-9">
                <textarea class="form-control" id="message" name="message" placeholder="Se o usuario digitar..." rows="5"></textarea>
              </div>
            </div>
    
            <!-- Message body -->
            <div class="form-group">
              <label class="col-md-3 control-label" for="message">Resposta do Sistema:</label>
              <div class="col-md-9">
                <textarea class="form-control" id="message" name="message" placeholder="O sistema deve responder..." rows="5"></textarea>
              </div>
            </div>
    
            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-12 text-right">
                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
              </div>
            </div>
          </fieldset>
          </form>
		</div>
		
        <div class="container">
		<div class="conteudo">
		  <h2>Respostas já cadastradas:</h2>
			
			<p>Confira as respostas cadastradas para o ChatBot</p>
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
</body>

<footer> </footer>
<script src="jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<script type="text/javascript" src="app.js"></script>
</html>