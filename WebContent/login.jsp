<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="UTF-8">
<title>Pagina principale</title>
</head>
<body>
	<f:view>
		<div>
			<h2>Login utente</h2>
			<div>
				<h:form>
					<div class="form_container">
						<label for="inputUsername">Username: </label>
						<div>
							<h:inputText styleClass="form-control"
								value="#{utenteController.userName}" required="true"
								requiredMessage="Username obbligatorio" id="id" />
							<h:message for="id" />
						</div>
						<div>
							<label for="inputPassword">Password:</label>
							<div>
								<h:inputSecret styleClass="form-control"
									value="#{utenteController.pwd}" required="true"
									requiredMessage="Password obbligatoria" id="password" />
								<h:message for="password" />
							</div>
						</div>

						<div>
							<div>
								<label class="control-label" for="inputError1">${utenteController.error}</label>
							</div>
							<h:commandButton styleClass="btn btn-lg btn-primary btn-block"
								value="Submit" action="#{utenteController.convalida}" />
						</div>
					</div>
				</h:form>
			</div>

		</div>
		<hr></hr>
		<div>
			<a href="index.jsp">Pagina principale</a>
		</div>
	</f:view>
</body>
</html>
