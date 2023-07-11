<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>

<%
    String id = request.getParameter("id");
		String name = request.getParameter("name");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String tema = request.getParameter("tema");
		String descripcion = request.getParameter("descripcion");
		String hora = request.getParameter("hora");
		String sala = request.getParameter("sala");
	
	

	try {
		ConexionDB conex = new ConexionDB(); 
		Statement st = conex.conectar();
		
		Integer okUpd=st.executeUpdate("UPDATE listoradores SET name='"+name+"', lastname='"+lastname+"', email='"+email+"', tel='"+tel+"', tema='"+tema+"', descripcion='"+descripcion+"', hora='"+hora+"', sala='"+sala+"' WHERE id=" + id);
		
		if(okUpd==1) {
			//System.out.println(okUpd);
			//response.sendRedirect("../view/inicio.jsp?mensaje=El%20usuario%20se%20agrego%20correctamente.");
			response.sendRedirect("../view/listOraObjAdm.jsp?mensaje=Los%20cambios%20en%20el%20orador%20se%20efectuaron%20correctamente.");
		} else {
			response.sendRedirect("../view/listOraObjAdm.jsp?mensaje=No%20se%20pudieron%20guardar%20los%cambios%20del%20orador.");
		}
		
	} catch(Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../view/listOraObjAdm.jsp?mensaje=No%20se%20puedo%20agregar%20el%20usuario");
	}

%>