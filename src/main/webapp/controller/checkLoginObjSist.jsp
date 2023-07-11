<%@page import="dao.UsuarioDaoSist"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>



<% 
	String user = request.getParameter("user");
	String pass = request.getParameter("pass");

	UsuarioDaoSist dao = new UsuarioDaoSist();
	Boolean usuValido = dao.validarUsu(user, pass);

	try {
				
		if (usuValido){
			response.sendRedirect("../view/listadoUsuariosObj.jsp");
		}else{
			response.sendRedirect("../view/loginObj.jsp?mensaje=Usuario%20o%20password%20incorrectos");
		}
		
	} catch(Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../view/loginObj.jsp?mensaje=Usuario%20o%20password%20incorrectos");
	}
%>