<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Nuvo prerequisito</title>
</head>
<body>
	<f:view>
		<div>
			<h2>Inserisci i prerequistiti per l'esame:</h2>
			<h:form>
				<label for="inputReq">Nome prerequisito:</label>
				<div>
					<h:inputText value="#{prerequisitoController.nome}" required="true"
						requiredMessage="Nome obbligatorio" id="req" />
					<h:message for="req" />
				</div>

				<label for="inputReqDesc">Descrizione:</label>
				<div>
					<h:inputText value="#{prerequisitoController.valore}" required="true"
						requiredMessage="Descrizione obbligatoria" id="ReqDesc">
					</h:inputText>
					<h:message for="ReqDesc" />
				</div>
				
				<label for="inputEsame">Codice esame:</label>
				<div>
					<h:inputText value="#{esameController.codice}" required="true"
						requiredMessage="Esame di appartenenza obbligatorio" id="esame">
					</h:inputText>
					<h:message for="esame" />
				</div>
				<div>
					<label class="control-label" for="inputError1">${prerequisitoController.error}</label>
				</div>

				<div>
					<h:commandButton value="Registra"
						action="#{prerequisitoController.createPrerequisito}" />
				</div>

			</h:form>
			<hr></hr>
			<div>
				<a href="amministratore.jsp">Profilo utente</a>
			</div>
			<div>
				<a href="newesame.jsp">Nuovo esame</a>
			</div>
			<div>
				<a href="newindicatore.jsp">Nuovo indicatore</a>
			</div>
			<div>
				<a href="index.jsp">Pagina principale</a>
			</div>
		</div>
	</f:view>
</body>