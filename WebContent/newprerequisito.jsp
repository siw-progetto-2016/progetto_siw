<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
<title>Clinica GPMG | Nuovo prerequisito</title>
</head>

<body>
	<f:view>
		
			<h2>Inserisci un prerequistio per l'esame:</h2>
			<h:form>
			<div class="form-group col-sm-3">
					<label for="codice">Nome prerequisito:</label>
					<h:inputText styleClass="form-control" value="#{prerequisitoController.nome}" required="true"
						requiredMessage="Nome obbligatorio" id="req" />
					<h:message for="req" />
				</div>
				<div class="form-group col-sm-3">
					<label for="data">Descrizione:</label>
					<h:inputText styleClass="form-control" value="#{prerequisitoController.valore}" required="true"
						requiredMessage="Descrizione obbligatoria" id="ReqDesc">
					</h:inputText>
					<h:message for="ReqDesc" />
				</div>
				<div style="clear: both;"></div>

				<div class="form-group col-sm-3">
					<label for="codice">Inserisci il codice dell'esame:</label>
					<h:inputText styleClass="form-control" value="#{esameController.codice}" required="true"
						requiredMessage="Esame di appartenenza obbligatorio" id="esame">
					</h:inputText>
					<h:message for="esame" />
				</div>
				<div style="clear: both;"></div>
				<div class="has-error">
					<label class="control-label" for="inputError">${prerequisitoController.error}</label>
				</div>
				<div style="clear: both;"></div>
				<div>
					<h:commandButton styleClass="btn btn-success"
						value="Registra prenotazione"
						action="#{prerequisitoController.createPrerequisito}" />
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
					<li><a href='<c:url value="/faces/amministratore.jsp" />'>Profilo amministratore</a></li>
					<li><a href='<c:url value="/faces/newesame.jsp" />'>Nuovo esame</a></li>
					<li><a href='<c:url value="/faces/newprerequisito.jsp" />'>Nuovo prerequisito</a></li>
					<li><a href='<c:url value="/faces/newindicatore.jsp" />'>Nuovo indicatore</a></li>
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