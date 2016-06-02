<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Pagina principale</title>
</head>
<body>
	<f:view>
		<div>
			<h2>Scegli un operazione</h2>
			<div>
				<a href='<c:url value="/faces/login.jsp"/>'>Effettua il login</a>
			</div>
			<hr></hr>
			<div>
				<h:form>
					<h:commandLink action="#{esameController.listaEsami}"
						value="Lista degli esami" />
				</h:form>
			</div>
		</div>
	</f:view>
</body>
</html>
