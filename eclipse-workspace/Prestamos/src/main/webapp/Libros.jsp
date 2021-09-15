<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Libros</title>
</head>
<body>
	<%! String mensaje="";
		String codigo= "", titulo= "", editorial="", autor="", estado="";
		int paginas=0;
	%>
    <h1>Modulo Libros</h1>
    <hr>
    <%
    if(request.getParameter("codigo") != null) {
    	codigo = request.getParameter("codigo");
    	titulo = request.getParameter("titulo");
    	editorial = request.getParameter("editorial");
    	autor = request.getParameter("autor");
    	paginas = Integer.parseInt(request.getParameter("paginas"));
    	estado="disabled";
    	
    }
    %>
    <%
    if(request.getParameter("men") != null) {
    	codigo = "";
    	titulo = "";
    	editorial = "";
    	autor = "";
    	paginas = 0;
    	estado="";
    	mensaje = request.getParameter("men");
    }
    %>
    <form action="Libro" method="POST">
        <div><label for="">Codigo: </label><input type="text" name="isbn" value="<%=codigo%>" required <%=estado%>></div>
        <div><label for="">Titulo: </label><input type="text" name="titulo" value="<%=titulo%>"></div>
        <div><label for="">Editorial: </label><input type="text" name="editorial" value="<%=editorial%>"></div>
        <div><label for="">Autor: </label><input type="text" name="autor" value="<%=autor%>"></div>
        <div><label for="">Paginas: </label><input type="number" name="paginas" value="<%=paginas%>"></div>
        <div><input type="submit" name="registrar" value="Registrar"></div>
        <div><input type="submit" name="consultar" value="Consultar"></div>
        <div><input type="submit" name="actualizar" value="Actualizar"></div>
        <div><input type="submit" name="eliminar" value="Eliminar"></div>
    </form>
    <form action="Libro" method="post">
	    <fieldset>
	    	<legend>Consultar</legend>
	    	<div><label>Codigo:</label><input type="text" name="codigo" required></div>
	    	<div><input type="submit" name="consultar" value="Consultar"></div>
	    </fieldset>
    </form>
    <h2><%=mensaje %></h2>
</body>
</html>