<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="css/logo.png">
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sticky-footer-navbar.css" rel="stylesheet">
<title>Clinica GPMG | Dettagli esame</title>
</head>
<body>
	<f:view>
		<h:form>
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#myNavbar">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="faces/index.jsp">GPMG</a>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav">
							<li class="active"><a href="faces/index.jsp">Home</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">Contatti</a></li>
						</ul>

					</div>
				</div>
			</nav>
			<h2>Dettagli esame</h2>
			<div class="col-sm-4">
				<ul class="list-group">
					<li class="list-group-item text-muted" contenteditable="false">Esame</li>
					<li class="list-group-item text-right"><span class="pull-left"><strong
							class="">Codice</strong></span>${esameController.esame.codice}</li>
					<li class="list-group-item text-right"><span class="pull-left"><strong
							class="">Prezzo</strong></span>${esameController.esame.costo}</li>
					<li class="list-group-item text-right"><span class="pull-left"><strong
							class="">Descrizione</strong></span>${esameController.esame.descrizione}</li>
				</ul>
			</div>
			<div style="clear: both;"></div>
			<h2>Prerequisiti per l'esame</h2>
			<div class="container-fluid text-left">
				<table class="table">
					<thead class="thead-inverse">
						<tr>
							<th>Nome prerequisito</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="req" items="#{esameController.prerequisiti}">
							<tr>
								<td><h:commandLink
										action="#{prerequisitoController.findPrerequisito}"
										value="#{req.nome}">
										<f:param name="id" value="#{req.id}" />
									</h:commandLink></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="container-fluid text-center">
				<div class="row content">
					<div class="col-sm-8 text-left">
						<h1>Istruzioni:</h1>
						<p>Clicca sul nome di un prerequisito per scoprire tutti i
							dettagli</p>
						<hr>
					</div>
				</div>
			</div>

			<div class="container-fluid text-center">
				<a href="index.jsp" class="btn btn-info" role="button">Pagina
					principale</a>
			</div>
		</h:form>
		<hr></hr>

		<footer class="footer text-center">
			<div class="container">
				<p class="text-muted">©GPMG 2016</p>
			</div>
		</footer>
	</f:view>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document.write('<script src="css/jquery.min.js"><\/script>')
	</script>
	<script src="css/bootstrap.min.js"></script>
</body>
</html>