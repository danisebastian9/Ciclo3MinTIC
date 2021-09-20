package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import Controlador.Conexion;

public class PrestamosDAO {

	Conexion cnn = new Conexion();
	Connection con = cnn.Conectar();
	PreparedStatement ps = null;
	ResultSet res = null;
	
	
	public boolean Insertar_Prestamo(PrestamosDTO p) {
		boolean result = false;
		try {
			String sql="insert into prestamos(estudiante, libro, fecha_prestamo) values(?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, p.getEstudiante());
			ps.setString(2, p.getLibro());
			ps.setString(3, p.getFecha_Prestamo());
			result = ps.executeUpdate() > 0 ;
			if(result) {
				sql="select Id_prestamos from prestamo order by id_prestamos desc limit 1;";
				ps = con.prepareStatement(sql);
				res = ps.executeQuery();
				int codigo = 0;
				while(res.next()) {
					codigo = res.getInt(1);
				}
				sql = "update prestamo set Fecha_Devolucion = Fecha_Prestamo + 7 where Id_prestamos=? ;";
				ps = con.prepareStatement(sql);
				ps.setInt(1, codigo);
				result = ps.executeUpdate()>0;
			}
			
		} catch(SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al insertar prestamo: " + ex);
		}
		return result;
	}
}
