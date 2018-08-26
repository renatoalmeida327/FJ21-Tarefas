<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
		
	</head>
	<body>
		
		<td>${tarefa.id}</td>
		<td>${tarefa.descricao}</td>
		<td>Finalizada!</td>
		<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyy" /></td>
		<td>
			<a href="removeTarefa?id=${tarefa.id}">Remover </a>/
			<a href="mostraTarefa?id=${tarefa.id}">Alterar</a>				
		</td>
		
	</body>
</html>