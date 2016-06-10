<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Nuovo indicatore</title>
</head>
<body>
	<f:view>
		<div>
			<h2>Inserisci  un indicatore ad un esame:</h2>
			<h:form>
				<label for="inputInd">Nome:</label>
				<div>
					<h:inputText value="#{indicatoreController.nome}" required="true"
						requiredMessage="Nome obbligatorio" id="Ind" />
					<h:message for="Ind" />
				</div>
				<label for="inputEsame">Codice esame:</label>
				<div>
					<h:inputText value="#{esameController.codice}" required="true"
						requiredMessage="Esame di appartenenza obbligatorio" id="esame">
					</h:inputText>
					<h:message for="esame" />
				</div>
				<div>
					<label class="control-label" for="inputError1">${indicatoreController.error}</label>
				</div>

				<div>
					<h:commandButton value="Registra"
						action="#{indicatoreController.createIndicatore}" />
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
				<a href="newprerequisito.jsp">Nuovo prerequisito</a>
			</div>
			<div>
				<a href="index.jsp">Pagina principale</a>
			</div>
		</div>
	</f:view>
</body>