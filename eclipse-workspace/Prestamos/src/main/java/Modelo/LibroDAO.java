package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import Controlador.Conexion;

public class LibroDAO {
	
	Conexion cnn = new Conexion();
	Connection con = cnn.Conectar();
	PreparedStatement ps = null;
	ResultSet res = null;
	
	public boolean Inserta_Libro(LibroDTO lib) {
		boolean result = false;
		try {
			String sql="insert into libro values(?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, lib.getISBN());
			ps.setString(2,lib.getTitulo());
			ps.setString(3, lib.getEditorial());
			ps.setString(4, lib.getAutor());
			ps.setInt(5, lib.getNo_paginas());
			result = ps.executeUpdate() > 0 ;
			
		} catch(SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al insertar: " + ex);
		}
		return result;
	}
	
	
	
	}
