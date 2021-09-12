package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class Controla
 */
@WebServlet("/Controla")
public class Controla extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controla() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ladoA, ladoB, ladoC;
		String tipo = "";
		
		if(request.getParameter("enviar")!= null) {
			ladoA = Integer.parseInt(request.getParameter("ladoA"));
			ladoB = Integer.parseInt(request.getParameter("ladoB"));
			ladoC = Integer.parseInt(request.getParameter("ladoC"));
			
			if(ladoA == ladoB && ladoB == ladoC) {
				tipo = "Triangulo Equilatero";
			} else if(ladoA == ladoB || ladoA == ladoC || ladoB == ladoC) {
				tipo = "Triangulo Isoceles";
			} else {
				tipo = "Triangulo Escaleno";
			}
			JOptionPane.showMessageDialog(null, tipo);
			
			response.sendRedirect("Index.jsp");
		}

	}

}
