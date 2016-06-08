<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Dettagli prenotazione</title>
</head>
<body>
	<f:view>
		<h1>${prenotazioneController.prenotazione.codice}</h1>
		<h2>Dettagli</h2>
		<div>Data esame: 		 ${prenotazioneController.prenotazione.dataesame}</div>
		<div>Data prenotazione:  ${prenotazioneController.prenotazione.datapren}</div>
		<div>Medico: 			 ${prenotazioneController.medico.nome} ${prenotazioneController.medico.cognome}</div> 
		<div>Tipologia di esame: ${prenotazioneController.esame.nome}</div> 
		<hr></hr>
		<div>
			<a href="index.jsp">Pagina principale</a>
		</div>
	</f:view>
</body>
</html>