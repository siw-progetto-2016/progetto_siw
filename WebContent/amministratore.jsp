<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profilo di ${utenteController.utente.userName }</title>
</head>
<body>
	<f:view>
		<h1>Benvenuto ${utenteController.utente.userName}</h1>
		
		<a href='<c:url value="/faces/newprenotazione.jsp" />'>Aggiungi una prenotazione</a>
		<hr></hr>
		<a href='<c:url value="/faces/newesame.jsp" />'>Aggiungi un nuovo tipo di esame</a>
		<hr></hr>
		<a href='<c:url value="/faces/newprerequisito.jsp" />'>Aggiungi un prerequisito ad un tipo di esame</a>
		<hr></hr>
		<a href='<c:url value="/faces/newindicatore.jsp" />'>Aggiungi un indicatore ad un tipo di esame</a>
		<hr></hr>
		<div>
			<a href="index.jsp">Pagina principale</a>
		</div>
	</f:view>
</body>
</html>