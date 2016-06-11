<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Nuovo esame</title>
</head>
<body>
	<f:view>
		<div>
			<h2>Inserisci i dati relativi all'esame:</h2>
			<h:form>

				<label for="inputCodice">Codice esame:</label>
				<div>
					<h:inputText value="#{esameController.codice}" required="true"
						requiredMessage="Codice obbligatorio" id="codice" />
					<h:message for="codice" />
				</div>

				<label for="inputNome">Nome esame:</label>
				<div>
					<h:inputText value="#{esameController.nome}" required="true"
						requiredMessage="Nome obbligatorio" id="nome">
					</h:inputText>
					<h:message for="nome" />
				</div>

				<label for="inputDesc">Descrizione:</label>
				<div>
					<h:inputTextarea value="#{esameController.descrizione}"
						required="false" cols="20" rows="5" />
				</div>

				<label for="inputPrezzo">Prezzo:</label>
				<div>
					<h:inputText value="#{esameController.costo}" required="true"
						requiredMessage="prezzo obbligatorio" id="prezzo">
					</h:inputText>
					<h:message for="prezzo" />
				</div>
				<div>
					<h:commandButton value="Registra esame"
						action="#{esameController.createEsame}" />
				</div>

			</h:form>
			<hr></hr>
			<div>
				<a href="amministratore.jsp">Profilo utente</a>
			</div>
			<div>
				<a href="newprerequisito.jsp">Nuovo prerequisito</a>
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