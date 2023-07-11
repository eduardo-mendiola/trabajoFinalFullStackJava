<%@page import="dao.OradorDao"%>
<%@page import="model.Orador"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

   
<div>
	<%
	   String mensaje = request.getParameter("mensaje");
	   if(mensaje!=null){
	       out.println("<div class='bg-secondary text-center p-1 rounded text-white'>");
	       out.println(mensaje);
	       out.println("</div>");
	   }
	%>
</div>

<table class="table table-striped text-center">
  <thead class="table-dark">
    <tr>
      <th scope="col">Nombre</th>
      <th scope="col">Tema</th>
      <th scope="col">Hora</th>
      <th scope="col">Sala</th>
    </tr>
  </thead>
  <tbody>
<!-- Dentro de estas etiquetas podemos programar en Java -->
<%
try {
	
	OradorDao dao = new OradorDao();
	List<Orador> listOra = dao.listarOradores(); 

                
                for(Orador ora: listOra) {
                	
                    out.println("<tr>");
	                    out.println("<td class='d-flex ms-0'>");
	                        String name = ora.getName();
	                        String lastname = ora.getLastname();
	                        out.println(name + " " + lastname);
	                    out.println("</td>");

                      out.println("<td>");
                  			String tema = ora.getTema();
                      	out.println(tema);
                  		out.println("</td>");
                    
                    	out.println("<td>");
                				String hora = ora.getHora();
	               				if (hora == null) {
         			            hora = "Sin asignar"; // Asignar "sin asignar" cuando la hora es null
	               			  }
                    		out.println(hora);
                			out.println("</td>");
                
                			out.println("<td>");
            						String sala = ora.getSala();
            						if (sala == null) {
                 			    sala = "Sin asignar"; // Asignar "sin asignar" cuando la hora es null
        	              }
                				out.println(sala);
            					out.println("</td>");
            				out.println("</tr>");   

                }

} catch(Exception e) {
                //System.out.println(e);
                //enviar email al desarrollador
                response.sendRedirect("../view/error.jsp?mensaje=No%20se%20puedo%20encontrar%20el%20usuario");
            }
            %>
  </tbody>
</table>



