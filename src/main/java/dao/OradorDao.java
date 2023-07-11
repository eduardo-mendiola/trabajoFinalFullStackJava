package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.ConexionDB;
import model.Orador;

public class OradorDao {
	// Lista de oradores
	public List<Orador> listarOradores() throws SQLException {
		ConexionDB con = new ConexionDB();
		Statement st = con.conectar();	
		
		ResultSet rs = st.executeQuery("SELECT * FROM listoradores");
		
		List<Orador> listOra = new ArrayList<Orador>();
		
		while(rs.next()) {
			Orador ora = new Orador(rs.getInt("id"),rs.getString("name"),rs.getString("lastname"), rs.getString("email"), rs.getString("tel"), rs.getString("tema"), rs.getString("descripcion"), rs.getString("hora"), rs.getString("sala"));
			
			listOra.add(ora);
		}
		
		return listOra;
	}
	
	// Agregar Orador
	
	public boolean addOrador(String name, String lastname, String email, String tel, String tema, String descripcion) 	throws SQLException {
		ConexionDB conex = new ConexionDB(); 
		Statement st = conex.conectar();
		
		Integer okIns = st.executeUpdate("INSERT INTO listoradores (name, lastname, email, tel, tema, descripcion) VALUES ('"+name+"', '"+lastname+"', '"+email+"', '"+tel+"', '"+tema+"', '"+descripcion+"') ");
		
		if (okIns == 1){
			return true;
		}else{
			return false;
		}
		
	}
	
	// Agregar Orador
	
		public boolean addOrador(String name, String lastname, String email, String tel, String tema, String descripcion, String hora, String sala) 	throws SQLException {
			ConexionDB conex = new ConexionDB(); 
			Statement st = conex.conectar();
			
			Integer okIns = st.executeUpdate("INSERT INTO listoradores (name, lastname, email, tel, tema, descripcion, hora, sala) 		VALUES ('"+name+"', '"+lastname+"', '"+email+"', '"+tel+"', '"+tema+"', '"+descripcion+"', '"+hora+"', '"+sala+"') ");
			
			if (okIns == 1){
				return true;
			}else{
				return false;
			}
			
		}

}
