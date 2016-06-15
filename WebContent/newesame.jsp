<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="css/sticky-footer-navbar.css" rel="stylesheet">
<title>Clinica GPMG | Nuovo esame</title>
</head>
<body>
	<f:view>
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

		<h2>Inserisci i dati relativi all'esame:</h2>
		<h:form>
			<div class="form-group col-sm-3">
				<label for="codice">Codice:</label>
				<h:inputText styleClass="form-control"
					value="#{esameController.codice}" required="true"
					requiredMessage="Codice obbligatorio" id="codice" />
				<h:message for="codice" />
			</div>
			<div class="form-group col-sm-3">
				<label for="nome">Nome esame:</label>
				<h:inputText styleClass="form-control"
					value="#{esameController.nome}" required="true"
					requiredMessage="Nome obbligatorio" id="nome">
				</h:inputText>
				<h:message for="nome" />
			</div>
			<div style="clear: both;"></div>
			
			<div class="form-group col-sm-3">
				<label for="desc">Descrizione:</label>
				<h:inputTextarea styleClass="form-control"
					value="#{esameController.descrizione}" required="false" cols="20"
					rows="5" />
			</div>
			<div class="form-group col-sm-3">
				<label for="prezzo">Prezzo:</label>
					<h:inputText styleClass="form-control"
					value="#{esameController.costo}" required="true"
					requiredMessage="prezzo obbligatorio" id="prezzo">
				</h:inputText>
				<h:message for="prezzo" />
			</div>
			<div style="clear: both;"></div>
			<div class="has-error">
				<label class="control-label" for="inputError">${esameController.error}</label>
			</div>
			<div style="clear: both;"></div>
			<div>
				<h:commandButton styleClass="btn btn-success"
					value="Registra esame"
					action="#{esameController.createEsame}" />
			</div>
		</h:form>

		<div style="clear: both;"></div>
		<hr></hr>
		<div class="dropdown">
			<button class="btn btn-primary dropdown-toggle" type="button"
				data-toggle="dropdown">
				Scegli un operazione <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href='<c:url value="/faces/amministratore.jsp" />'>Profilo
						amministratore</a></li>
				<li><a href='<c:url value="/faces/newprerequisito.jsp" />'>Nuovo
						prerequisito</a></li>
				<li><a href='<c:url value="/faces/newindicatore.jsp" />'>Nuovo
						indicatore</a></li>
			</ul>
		</div>
		<div style="clear: both;"></div>
		<div class="container-fluid text-center">
			<a href="index.jsp" class="btn btn-info" role="button">Pagina
				principale</a>
		</div>

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