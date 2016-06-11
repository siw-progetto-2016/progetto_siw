<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Crea una prenotazione</title>
</head>
<body>
	<f:view>
		<div>
			<h2>Inserisci i dati relativi alla prenotazione</h2>
			<h:form>

				<label for="inputCodice">Codice prenotazione:</label>
				<div>
					<h:inputText value="#{prenotazioneController.codice}"
						required="true" requiredMessage="Codice obbligatorio" id="codice" />
					<h:message for="codice" />
				</div>

				<label for="inputData">Data esame:</label>
				<div>
					<h:inputText value="#{prenotazioneController.dataesame}"
						required="true" requiredMessage="Data obbligatoria" id="data">
						<f:convertDateTime pattern="dd-MM-yyyy" />
					</h:inputText>
					<h:message for="data" />
				</div>

				<label for="inputEsame">Inserisci il codice dell'esame:</label>
				<div>
					<h:inputText value="#{esameController.codice}" required="true"
						requiredMessage="Esame obbligatorio" id="esame">
					</h:inputText>
					<h:message for="esame" />
				</div>

				<label for="inputMedico">Inserisci l'username di un
					paziente:</label>
				<div>
					<h:inputText value="#{utenteController.userName}" required="true"
						requiredMessage="Paziente obbligatorio" id="paziente">
					</h:inputText>
					<h:message for="paziente" />
				</div>

				<label for="inputMedico">Inserisci l'username di un medico:</label>
				<div>
					<h:inputText value="#{medicoController.userName}" required="true"
						requiredMessage="Medico obbligatorio" id="medico">
					</h:inputText>
					<h:message for="medico" />
				</div>

				<div>
					<label class="control-label" for="inputError1">${prenotazioneController.error}</label>
				</div>

				<div>
					<h:commandButton value="Registra prenotazione"
						action="#{prenotazioneController.createPrenotazione}" />
				</div>

			</h:form>
			<hr></hr>
			<div>
				<a href="index.jsp">Pagina principale</a>
			</div>
		</div>
	</f:view>
</body>