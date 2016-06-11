<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prenotazioni effettuate</title>
</head>
<body>
	<f:view>
		<h1>Lista delle prenotazioni</h1>
		<h:form>
			<table>
				<tr>
					<th>Codice</th>
					<th>Id prenotazione</th>
				</tr>
				<c:forEach var="pren" items="#{prenotazioneController.prenotazioni}">
					<tr>
						<td><h:commandLink
								action="#{prenotazioneController.findPrenotazione}"
								value="#{pren.codice}">
								<f:param name="id" value="#{pren.id}" />
							</h:commandLink></td>
						<td>${pren.id}</td>
					</tr>
				</c:forEach>
			</table>
		</h:form>
		<hr></hr>
		<div>
			<a href="index.jsp">Pagina principale</a>
		</div>

	</f:view>

</body>
</html>