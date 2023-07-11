package dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.ConexionDB;
import model.Usuario;

public class UsuarioDaoAdm {
	
	// Lista de usuarios
	public List<Usuario> listarUsuario() throws SQLException {
		ConexionDB con = new ConexionDB();
		Statement st = con.conectar();	
		
		ResultSet rs = st.executeQuery("SELECT * FROM administradores");
		
		List<Usuario> listUsu = new ArrayList<Usuario>();
		
		while(rs.next()) {
			Usuario usu = new Usuario(rs.getInt("id"),rs.getString("user"),rs.getString("pass"));
			
			listUsu.add(usu);
		}
		
		return listUsu;
	}
	
	
	// Validar usuario - Login - 
	public boolean validarUsu(String user, String pass) throws SQLException {
		
		
		ConexionDB conex = new ConexionDB(); 
		Statement st = conex.conectar();
		ResultSet rs = st.executeQuery("SELECT * FROM administradores WHERE user='"+user+"' AND pass='"+pass+"'");
		
		if (rs.next()){
			return true;
		}else{
			return false;
		}
			

	}
	
	// Agregar Usuario
	
	public boolean addUser(String user, String pass) 	throws SQLException {
		ConexionDB conex = new ConexionDB(); 
		Statement st = conex.conectar();
		
		Integer okIns = st.executeUpdate("INSERT INTO administradores (user, pass) VALUES ('"+user+"', '"+pass+"') ");
		
		if (okIns == 1){
			return true;
		}else{
			return false;
		}
		
	}

}
	
	

