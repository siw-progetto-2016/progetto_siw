<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profilo di ${utenteController.utente.userName }</title>
</head>
<body>
	<f:view>
		<h1>Benvenuto ${utenteController.utente.userName}</h1>
		<h2>Dettagli paziente</h2>
		<div>Nome: ${utenteController.utente.nome}</div>
		<div>Cognome: ${utenteController.utente.cognome}</div>
		<div>Data di nascita: ${utenteController.utente.datadinascita}</div>
		<div>Codice fiscale: ${utenteController.utente.cf}</div>
		<div>Sesso: ${utenteController.utente.sesso}</div>
		<div>Email: ${utenteController.utente.email}</div>
		<hr></hr>
		<div>
			<h:form>
				<h:commandLink
					action="#{prenotazioneController.listaPrenotazioni(utenteController.utente)}"
					value="Elenco delle prenotazioni" />
			</h:form>
		</div>
		<hr></hr>
		<div>
			<a href="index.jsp">Pagina principale</a>
		</div>
	</f:view>

</body>
</html>