<%@page import="dao.UsuarioDaoAdm"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
	String user = request.getParameter("user");
	String pass = request.getParameter("pass");


	try {
		UsuarioDaoAdm dao = new UsuarioDaoAdm();
		Boolean confOrador = dao.addUser (user, pass);
	
		
		if(confOrador) {
			String mensaje = "El usuario " + user + " se agrego correctamente.";
			response.sendRedirect("../view/listadoUsuariosObj.jsp?mensaje=" + mensaje);
		} else {
			response.sendRedirect("../view/listadoUsuariosObj.jsp?mensaje=No%20se%20puedo%20agregar%20al%20usuario.");
		}
		
	} catch(Exception e) {
		//System.out.println(e);
		//enviar email al desarrollador
		response.sendRedirect("../view/listadoUsuariosObj.jsp?mensaje=No%20se%20puedo%20agregar%20al%20usuario.");
	}



	
%>