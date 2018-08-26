<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet">
	</head>
	<body>
		<h2>Página Inicial da Lista de Tarefas</h2>
		<p>Seja bem vindo, ${usuarioLogado.login}!</p><br>
		<a href="listaTarefas">Clique aqui</a> para acessar sua barra de tarefas
		<br><br>
		<a href="logout">Sair do sistema</a>
	</body>
</html>