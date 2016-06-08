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

				<label for="inputCodice">Codice esame:</label>
				<div>
					<h:inputText styleClass="form-control"
						value="#{prenotazioneController.codice}" required="true"
						requiredMessage="Codice obbligatorio" id="codice" />
					<h:message for="codice" />
				</div>

				<label for="inputData">Data esame:</label>
				<div>
					<h:inputText styleClass="form-control"
						value="#{prenotazioneController.dataesame}" required="true"
						requiredMessage="Data obbligatoria" id="data">
						<f:convertDateTime pattern="dd-MM-yyyy" />
					</h:inputText>
					<h:message for="data" />
				</div>
				<label for="inputEsame">Seleziona il tipo di esame:</label>
				<div>
					<h:selectOneMenu value="#{prenotazioneController.esame}">
						<f:selectItems value="#{esameController.testEsami()}" var="esame"
							itemValue="#{esame}" itemLabel="#{esame.nome}" />
					</h:selectOneMenu>
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