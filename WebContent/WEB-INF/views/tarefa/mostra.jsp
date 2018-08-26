<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="dt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="resources/css/jquery-ui.css" />
		<link rel="stylesheet" href="resources/css/jquery-ui.structure.min.css" />
		<link rel="stylesheet" href="resources/css/jquery-ui.theme.min.css" />
		<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet">
		<script type="text/javascript" src="resources/js/jquery.js"></script>
		<script type="text/javascript" src="resources/js/jquery-ui.js"></script>

	</head>
	<body>
		<h3>Alterar Tarefa - ${tarefas.id}</h3>
		
		<form action="alteraTarefa" method="post">
		
			<input type="hidden" name="id" value="${tarefas.id}">
			
			Descrição: <br>
			<textarea name="descricao" rows="5" cols="100">${tarefas.descricao}</textarea>
			<br>
			<br>
			Finalizado? 
			<input type="checkbox" name="finalizado" value="true" ${tarefas.finalizado? 'checked': ''}>
			<br>
			<br>
			<!-- Data de finalização: 
			<input type="text" name="dataFinalizacao" 
			value="<fmt:formatDate value="${tarefas.dataFinalizacao.time}" pattern="dd/MM/yyy"/>">
			<br>
			<br> -->
			Data de finalizacao: <dt:campoData id="dataFinalizacao"/>
			<br> 			
			<br>
			<input type="submit" value="Alterar">
		</form>
	
	</body>
</html>