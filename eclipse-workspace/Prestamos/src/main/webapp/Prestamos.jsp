<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prestamos</title>
</head>
<body>
<%!String nombre,isbn; %>
	<form action="" method="post">
    	<div><label>Codigo Libro:</label><input type="text" name="codigo" required>
    	<input type="submit" name="consultar" value="Consultar">
	</form>
	<form action="">
    	<label>Nombre del Libro:</label><input type="text" name="nombreLib" value="<%=nombre%>">
    	<input type="hidden" name="isbnLib" value="<%=isbn%>"></div>
    	<div><label>Estudiante:</label><input type="text" name="est" required></div>
    	<div><label>Fecha_Prestamo:</label><input type="date" name="fecha" required></div>
    	<div><input type="submit" name="consultar" value="Consultar"></div>
	</form>
</body>
</html>