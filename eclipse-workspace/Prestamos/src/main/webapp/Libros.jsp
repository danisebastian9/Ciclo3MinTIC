<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Libros</title>
</head>
<body>
	<%! String mensaje=""; %>
    <h1>Modulo Libros</h1>
    <hr>
    <form action="Libro" method="POST">
        <div><label for="">Codigo: </label><input type="text" name="isbn"></div>
        <div><label for="">Titulo: </label><input type="text" name="titulo"></div>
        <div><label for="">Editorial: </label><input type="text" name="editorial"></div>
        <div><label for="">Autor: </label><input type="text" name="autor"></div>
        <div><label for="">Paginas: </label><input type="number" name="paginas"></div>
        <div><input type="submit" name="registrar" value="Registrar"></div>
        <div><input type="submit" name="consultar" value="Consultar"></div>
        <div><input type="submit" name="actualizar" value="Actualizar"></div>
        <div><input type="submit" name="eliminar" value="Eliminar"></div>
    </form>
    <%
    if(!mensaje.equals(""))
    mensaje = request.getParameter("men");
    %>
    <h2><%=mensaje %></h2>
</body>
</html>