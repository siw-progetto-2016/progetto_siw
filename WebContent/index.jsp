<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
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

<!-- Custom styles for this template -->
<link href="jumbotron.css" rel="stylesheet">

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
							<li><a href='<c:url value="/faces/login.jsp"/>'><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
						</ul>

					</div>
				</div>
			</nav>
			
				<div class="container-fluid text-center">
					<img src="css/banner.png" alt="Img" class="img-rounded">
				</div>


			

			<div class="container-fluid text-center">

				<div class="row content">

					<div class="text-left" style='background-color: #2ba6cb;'>
						<img src="css/img1.jpg" alt="Img" class="img-rounded center-block">
					</div>
					<div class="col-sm-2 sidenav">
						<p>
							<a href="#">Link</a>
						</p>
						<p>
							<a href="#">Link</a>
						</p>
						<p>
							<a href="#">Link</a>
						</p>
					</div>

					<div class="col-sm-8 text-left">
						<h1>Welcome</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.
							Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
							officia deserunt mollit anim id est laborum consectetur
							adipiscing elit, sed do eiusmod tempor incididunt ut labore et
							dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
							exercitation ullamco laboris nisi ut aliquip ex ea commodo
							consequat.</p>
						<hr>
						<h3>Test</h3>
						<p>Lorem ipsum...</p>
					</div>
					<div class="col-sm-2 sidenav">
						<div class="well">
							<p>ADS</p>
						</div>
						<div class="well">
							<p>ADS</p>
						</div>
					</div>
				</div>
			</div>


		</h:form>
		<footer class="footer text-center">
			<div class="container">
				<p class="text-muted">Place sticky footer content here.</p>
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
