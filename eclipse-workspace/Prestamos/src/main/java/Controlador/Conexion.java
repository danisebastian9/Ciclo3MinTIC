package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class Conexion {
	public String bd = "libros";
	public String url = "jdbc:mysql://localhost:3306/" + bd;
	public String user = "root";
	public String pass = "";
	
	Connection conec = null;
	
	public Connection Conectar() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conec = DriverManager.getConnection(url, user, pass);
			JOptionPane.showMessageDialog(null, "Conexion Exitosa");
		} catch(Exception e) {
			JOptionPane.showMessageDialog(null, "Error en la conexion..." + e);
		}
		return conec;
	}
}
