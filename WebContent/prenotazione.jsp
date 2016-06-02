<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Dettagli prenotazione</title>
</head>
<body>
	<f:view>
		<h1>${utenteController.prenotazione.codice}</h1>
		<h2>Dettagli</h2>
		<div>Data esame: ${utenteController.prenotazione.dataesame}</div>
		<div>Data prenotazione: ${utenteController.prenotazione.datapren}</div>
		<!-- <div>Medico: ${utenteController.prenotazione.getMedico}</div>  -->
	</f:view>
</body>
</html>