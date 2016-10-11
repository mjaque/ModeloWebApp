<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ModeloApp</title>
</head>
<body>
	<h1>Login</h1>
	<% 
	String error = (String)request.getAttribute("error");
	if (error != null) {%>
	<p>Error de Login</p>
	<%} %>
	<form action="">
		<input type="hidden" name="accion" value="login"/>
		<input type="text" name="usuario" placeholder="Nombre de usuario"/><br/>
		<input type="password" name="clave" placeholder="clave"/><br/>
		<button type="submit" value="Acceso">Acceso</button>
	</form>
</body>
</html>