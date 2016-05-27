<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Dettagli per l'esame ${esameController.esame.nome}</title>
</head>
<body>
	<f:view>
		<h1>${esameController.esame.nome}</h1>
		<h2>Dettagli</h2>
		<div>Codice: ${esameController.esame.codice}</div>
		<div>Prezzo: ${esameController.esame.costo}</div>
		<div>Descrizione: ${esameController.esame.descrizione}</div>
	</f:view>
</body>
</html>