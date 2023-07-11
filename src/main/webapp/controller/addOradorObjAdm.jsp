<%@page import="dao.OradorDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
	String name = request.getParameter("name");
	String lastname = request.getParameter("lastname");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	String tema = request.getParameter("tema");
	String descripcion = request.getParameter("descripcion");
	String hora = request.getParameter("hora");
	String sala = request.getParameter("sala");

	try {
	OradorDao dao = new OradorDao();
	Boolean confOrador = dao.addOrador(name, lastname, email, tel, tema, descripcion, hora, sala);
	

	
		
		if(confOrador) {
			String mensaje = name + " " + lastname + " se ha inscripto correctamente.";
			response.sendRedirect("../view/listOraObjAdm.jsp?mensaje=" + mensaje);
		} else {
			response.sendRedirect("../view/listOraObjAdm.jsp?mensaje=No%20se%20puedo%20inscribir%20al%20orador.");
		}
		
	} catch(Exception e) {
		//System.out.println(e);
		//enviar email al desarrollador
		response.sendRedirect("../view/listOraObjAdm.jsp?mensaje=No%20se%20puedo%20inscribir%20al%20orador.");
	}
	
%>

	

