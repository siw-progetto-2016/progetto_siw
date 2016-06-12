<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<!-- Custom styles for this template -->
<link href="css/jumbotron-narrow.css" rel="stylesheet">
<title>Clinica GPMG | Esami offerti</title>
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
						<ul class="nav navbar-nav navbar-right">
							<li><a href='<c:url value="/faces/login.jsp"/>'>Login</a></li>
						</ul>
					</div>
				</div>
			</nav>
			
			<div class="container-fluid text-left">
			<h2>Elenco degli esami offerti</h2>
				<table class="table">
					<thead class="thead-inverse">
						<tr>
							<th>Nome esame</th>
							<th>Codice esame</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="esame" items="#{esameController.esami}">
							<tr>
								<td><h:commandLink action="#{esameController.findEsame}"
										value="#{esame.nome}">
										<f:param name="id" value="#{esame.id}" />
									</h:commandLink></td>
								<td>${esame.codice}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="container-fluid text-center">
				<div class="row content">
					<div class="col-sm-8 text-left">
						<h1>Istruzioni:</h1>
						<p>Clicca sul nome di un esame per scoprire tutti i dettagli</p>
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