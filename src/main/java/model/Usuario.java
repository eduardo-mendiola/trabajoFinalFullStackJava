package model;

public class Usuario {

	private Integer id;
	private String user;
	private String pass;
	
	// Constructor
	public Usuario(Integer id, String user, String pass) {
		super();
		this.id = id;
		this.user = user;
		this.pass = pass;
	}
	
	// Getters and Setters
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	
	
	
	
	

	
	
	
	
}
