<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="Login.css">
</head>
<body>
    <form action="Login" method="POST">
        <div id="fields">
            <div ><label class="labels" for="">User</label><input type="text" name="usuario"></div>
            <div ><label class="labels" for="">Password</label><input type="password" name="pass"></div>
            <div><input class="buttons" type="submit" name="enviar" value="Ingresar"></div>
            <div><a href="Index.jsp"><input class="buttons" type="button" value="Cancelar"></a></div>
        </div>

    </form>	
</body>
</html>