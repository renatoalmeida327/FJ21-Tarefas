<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet">
	</head>
	<body>
		<h2>Página de Login das tarefas</h2>
		
		<form action="efetuarLogin" method="post">
			Login: <input type="text" name="login" /><br>
			Senha: <input type="password" name="senha" /><br>
			<input type="submit" value="Entrar nas tarefas" />
		</form>
		
	</body>
</html>