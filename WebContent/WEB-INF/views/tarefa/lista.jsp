<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Lista Tarefas</title>
		<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet">
		<script type="text/javascript" src="resources/js/jquery.js"></script>
	</head>
	<body>
	
		<script type="text/javascript">
		
			function finalizaAgora(id){
				$.post("finalizaTarefa", {'id' : id}, function(resposta) {
					$("#tarefa_"+id).html(resposta);
				});
			}
		</script>
		<div>
			<a href="novaTarefa">Criar nova Tarefa</a> / 
			<a href="menu">Menu</a><br><br>
		</div>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>Descrição</th>
				<th>Finalizado?</th>
				<th>Data de finalização</th>
				<th>Gerenciamento</th>
			</tr>
			<c:forEach items="${tarefas}" var="tarefa">
			<tr id="tarefa_${tarefa.id}">
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				
				<c:if test="${tarefa.finalizado eq false}">
					<td id="tarefa_${tarefa.id}">
						<a href="#" onClick="finalizaAgora(${tarefa.id})">Finalizar agora!</a>
					</td>
				</c:if>
				
				<c:if test="${tarefa.finalizado eq true}">
					<td>Finalizado</td>
				</c:if>
				
				<td id="date_${tarefa.id}">
					<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyy"/>
				</td>
				
				<td>
				<a href="removeTarefa?id=${tarefa.id}">Remover </a>/
				<a href="mostraTarefa?id=${tarefa.id}">Alterar</a>				
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>