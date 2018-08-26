<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="dt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Formulário</title>
	</head>
	<body>
		<h3>Adicionar Tarefas</h3>
		
		<form:errors path="tarefa.descricao" cssStyle="color:red" />
		<form action="adicionaTarefa" method="post">
			Descrição: <br>
			<textarea name="descricao" rows="5" cols="100"></textarea><br>
			
			<input type="submit" value="Adicionar"/>
		</form>
		
		<br><br>
		
		<a href="listaTarefas">Voltar para Lista de Tarfas</a>
	</body>
</html>