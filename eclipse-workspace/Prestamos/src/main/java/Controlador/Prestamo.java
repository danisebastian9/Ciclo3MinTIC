package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.LibroDAO;
import Modelo.LibroDTO;

/**
 * Servlet implementation class Prestamo
 */
@WebServlet("/Prestamo")
public class Prestamo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Prestamo() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("consultarLib") != null) { //"codigo"
			LibroDAO libDao=null;
			String codigo, titulo;
			
			codigo = request.getParameter("codigo");
			LibroDTO lib = libDao.Buscar_Libro(codigo);
			if(lib != null) {
				codigo = lib.getISBN();
				titulo = lib.getTitulo();
				
				response.sendRedirect("Libros.jsp?codigo="+codigo+"&&titulo="+titulo);
			} else {
				response.sendRedirect("Libros.jsp?men=El libro no existe");
			}
		}
	}

}
