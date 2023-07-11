<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>

<%
		String id = request.getParameter("id");
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
	
	

	try {
		ConexionDB conex = new ConexionDB(); 
		Statement st = conex.conectar();
		
		Integer okUpd=st.executeUpdate("UPDATE administradores SET user='"+user+"', pass='"+pass+"' WHERE id=" + id);
		
		if(okUpd==1) {
			response.sendRedirect("../view/listadoUsuariosObj.jsp?mensaje=Los%20cambios%20en%20el%20usuario%20se%20efectuaron%20correctamente.");
		} else {
			response.sendRedirect("../view/listadoUsuariosObj.jsp?mensaje=No%20se%20pudieron%20guardar%20los%cambios%20del%20usuario.");
		}
		
	} catch(Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../view/listadoUsuariosObj.jsp?mensaje=No%20se%20puedo%20agregar%20el%20usuario");
	}

%>