<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio grupo 31</title>
</head>
<body>
    <form action="Controla" method="POST">
        <div><label for="">Lado A: </label><input type="number" name="ladoA"></div>
        <div><label for="">Lado B: </label><input type="number" name="ladoB"></div>
        <div><label for="">Lado C: </label><input type="number" name="ladoC"></div>
        <div><input type="submit" name="enviar"></div>
    </form>
    <hr>
    <% String res = request.getParameter("t") %>
    <div>
        Respuesta: <% =res %>
    </div>
</body>
</html>