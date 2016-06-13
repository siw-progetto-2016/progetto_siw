<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html  >
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


<title>Clinica GPMG | Login utente</title>
</head>
<body>
	<f:view>
		<div>
			<h:form>
				<nav class="navbar navbar-inverse">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#myNavbar">
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

				<div class="container">
					
						<div class="col-md-3">
							<div class="form-signin">
								<h2 class="form-signin-heading">Login utente</h2>
								<h:inputText styleClass="form-control input-sm chat-input"
									value="#{utenteController.userName}" required="true"
									requiredMessage="Username obbligatorio" id="id" />
								<h:message for="id" />
								
								<h:inputSecret styleClass="form-control input-sm chat-input"
									value="#{utenteController.pwd}" required="true"
									requiredMessage="Password obbligatoria" id="password" />
								<h:message for="password" />
								
								<div class="wrapper">
									<span class="group-btn"> <h:commandButton
											styleClass="btn btn-success" value="Login"
											action="#{utenteController.convalida}" />

									</span>
								</div>
								 
								<div class="has-error">
									<label class="control-label" for="inputError">${utenteController.error}</label>
								</div> 
							</div>

						</div>
					
				</div>

				<div class="container-fluid text-center">
					<a href="index.jsp" class="btn btn-info" role="button">Pagina
						principale</a>
				</div>

			</h:form>
		</div>
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
