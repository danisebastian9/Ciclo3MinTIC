<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prestamos</title>
</head>
<body>
<%!String nombre,isbn, fecha_dev; %>
	<form action="Prestamo" method="post">
    	<div>
			<label>Codigo Libro:</label><input type="text" name="codigo" required>
    		<input type="submit" name="consultar" value="Consultar">
			</form>
			<form action="">
				<label for="">Codigo Prestamo: <%=codigo%></label>
    			<label>Nombre del Libro:</label><input type="text" name="nombreLib" value="<%=nombre%>">
    			<input type="hidden" name="isbnLib" value="<%=isbn%>">
		</div>
    	<div><label>Estudiante:</label><input type="text" name="est" required></div>
    	<div><label>Fecha_Prestamo:</label><input type="date" name="fecha" required></div>
		<label for="">Fecha Devolucion: <%=fecha_dev%></label>
    	<div><input type="submit" name="consultar" value="Consultar"></div>
	</form>
</body>
</html>