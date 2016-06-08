<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<hr></hr>
		<h2>Prerequisiti per l'esame</h2>
		<h:form>
			<table>
				<tr>
					<th>Nome</th>
				</tr>
				<c:forEach var="req" items="#{esameController.prerequisiti}">
					<tr>
						<td><h:commandLink
								action="#{prerequisitoController.findPrerequisito}"
								value="#{req.nome}">
								<f:param name="id" value="#{req.id}" />
							</h:commandLink></td>
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