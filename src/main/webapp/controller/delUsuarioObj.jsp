<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>

<% 
	String idUser = request.getParameter("idUser");
	
	try {
		ConexionDB conex = new ConexionDB(); 
		Statement st = conex.conectar();
		
		Integer okDel=st.executeUpdate("DELETE FROM listoradores WHERE id="+idUser);
		
		if(okDel==1) {
			//System.out.println(okIns);
			//response.sendRedirect("../view/inicio.jsp?mensaje=El%20usuario%20se%20agrego%20correctamente.");
			response.sendRedirect("../view/listOraObjAdm.jsp?mensaje=El%20usuario%20se%20elimino%20correctamente.");
		} else {
			response.sendRedirect("../view/altaUsuario.jsp?mensaje=No%20se%20puedo%20eliminar%20el%20usuario");
		}
		
	} catch(Exception e) {
		//System.out.println(e);
		//enviar email al desarrollador
		response.sendRedirect("../view/altaUsuario.jsp?mensaje=No%20se%20puedo%20eliminar%20el%20usuario");	
	}



	
%>