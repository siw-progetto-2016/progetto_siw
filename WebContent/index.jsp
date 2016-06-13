<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<title>Clinica GPMG | Pagina principale</title>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sticky-footer-navbar.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/jumbotron-narrow.css" rel="stylesheet">

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

							<li><h:commandLink action="#{esameController.listaEsami}"
									value="Esami" /></li>

							<li><a href="#">Contatti</a></li>

						</ul>

						<ul class="nav navbar-nav navbar-right">
							<li><a href='<c:url value="/faces/login.jsp"/>'> Login</a></li>
						</ul>

					</div>
				</div>
			</nav>

			<div class="container">
				<div class="row marketing">
					<img src="css/banner.png" alt="Img" class="img-rounded">
					<div class="col-lg-6">
						<p>Esami clinici.</p>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="text-center" style='background-color: #2ba6cb;'>
					<img src="css/img1.jpg" alt="Img" class="img-rounded center-block">
				</div>
			</div>

			<div class="container">
				<div class="row marketing">

					<div class="col-lg-6">
						<h1>Presentazione</h1>
						<p>La GPMG è una moderna struttura sanitaria che ha sviluppato
							un innovativo modello organizzativo valorizzando le eccellenze
							medico-chirurgiche ad elevata specializzazione.</p>
						<hr>
						<h3>I servizi offerti comprendono:</h3>
						<ul type="disc">
							<li>Attrezzature mediche di ultima generazione</li>
							<li>Possibilità di consultare le proprie prenotazioni online</li>
							<li>Ampia scelta di esami</li>
							<li>Risultati di un esame a portata di click</li>
						</ul>
						<h3>Consulta gli esami</h3>
						<h:commandLink action="#{esameController.listaEsami}"
							styleClass="btn btn-info">
						 Vai
						</h:commandLink>
						<h3>Se sei già registrato</h3>
						<a href="login.jsp" class="btn btn-success" role="button">Login</a>


				</div>
			</div>
</div>

		</h:form>
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
