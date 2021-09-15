package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario, password;
		
		if(request.getParameter("enviar") != null) {
			usuario = request.getParameter("usuario");
			password = request.getParameter("pass");
			if( usuario.equals("viviana") && password.equals("12345")) {
				JOptionPane.showMessageDialog(null, "Bienvenido!!! Administrador");
				response.sendRedirect("Menu.jsp?nom=" + usuario);
			} else {
				JOptionPane.showMessageDialog(null, "Datos incorrectos");
				response.sendRedirect("Login.jsp");
			}
		}
	}

}
