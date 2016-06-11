<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Cerca prenotazioni per medico</title>
</head>
<body>
	<f:view>
		<div>
			<h2>Inserisci  nome e cognome di un medico:</h2>
			<h:form>
				<label for="inputMedico">Nome:</label>
				<div>
					<h:inputText value="#{medicoController.nome}" required="true"
						requiredMessage="Nome obbligatorio" id="nome" />
					<h:message for="nome" />
				</div>
				<label for="inputMedico">Cognome:</label>
				<div>
					<h:inputText value="#{medicoController.cognome}" required="true"
						requiredMessage="Cognome obbligatorio" id="cognome" />
					<h:message for="cognome" />
				</div>
				<label for="inputMedico">Username Medico:</label>
				<div>
					<h:inputText value="#{medicoController.userName}" required="true"
						requiredMessage="Username del medico obbligatorio" id="userName">
					</h:inputText>
					<h:message for="userName" />
				</div>
				<div>
					<label class="control-label" for="inputError1">${prenotazioneController.error}</label>
				</div>

				<div>
					<h:commandButton value="Cerca"
						action="#{prenotazioneController.listaPrenotazioni(medicoController.findByUsername())}" />
				</div>

			</h:form>
			<hr></hr>
			<div>
				<a href="index.jsp">Pagina principale</a>
			</div>
		</div>
	</f:view>
</body>