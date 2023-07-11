<!DOCTYPE html>
<%@page import="model.Orador"%>
<%@page import="java.util.List"%>
<%@page import="dao.OradorDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en" data-bs-theme="dark">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trabajo Practico Java</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body>
    <jsp:include page="menu.jsp"/>
    <div class="modal modal-sheet position-static d-block bg-body-secondary p-4 py-md-5" tabindex="-1" role="dialog" id="modalSignin">
	<div class="container modal-content rounded-4 shadow">
		<div class="text-center fs-3 my-4">Listado Oradores</div>
		<a class="nav-link active ms-auto m-4 fs-5" href='#' data-bs-toggle='modal' data-bs-target='#agregarOra' id='" + ora.getId() + "' name='" + ora.getName() + "' lastname='" + ora.getLastname() + "' email='" + ora.getEmail() + "' tel='" + ora.getTel() + "' tema='" + ora.getTema() + "' descripcion='" + ora.getDescripcion() + "' hora='" + ora.getHora() + "' Sala='" + ora.getSala() + "'>Agregar Orador</a>
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
			    	<th scope="col">#ID</th>
	      		<th scope="col">Nombre</th>
     				<th scope="col">Apellido</th>
     				<th scope="col">Tema</th>
     				<th scope="col">Horas</th>
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
					                	out.println("<td>");
				                        Integer id = ora.getId();
				                        out.println(id);
				                    out.println("</td>");
				                	
				                    out.println("<td>");
				                        String name = ora.getName();
				                        out.println(name);
				                    out.println("</td>");

			                      out.println("<td>");
			                      	String lastname = ora.getLastname();
			                          out.println(lastname);
			                      out.println("</td>");

			                      out.println("<td>");
			                  			String tema = ora.getTema();
			                      	out.println(tema);
			                  		out.println("</td>");
			                    
			                    	out.println("<td>");
			                			  String hora = ora.getHora();
			                    		out.println(hora);
			                			out.println("</td>");
			                
			                			out.println("<td>");
			            						String sala = ora.getSala();
			                				out.println(sala);
			            					out.println("</td>");
			            			

                            out.println("<td>");
	                            out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#modificarOra' id='" + ora.getId() + "' name='" + ora.getName() + "' lastname='" + ora.getLastname() + "' email='" + ora.getEmail() + "' tel='" + ora.getTel() + "' tema='" + ora.getTema() + "' descripcion='" + ora.getDescripcion() + "' hora='" + ora.getHora() + "' Sala='" + ora.getSala() + "'><i class='bi bi-pencil-fill m-1'></i></a>");
	                            out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#delModal' idUsuario='" + ora.getId() + "' user='" + ora.getName() + "' lastname='" + ora.getLastname() + "'><i class='bi bi-trash-fill m-1'></i></a>");

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
	</div>
  </div>

  <div class="modal fade" id="delModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar Usuario</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="../controller/delUsuarioObj.jsp" method="post">
	        <div class="modal-body text-center">
	            <div class="mb-3">
	              <label for="recipient-name" class="col-form-label">Esta a punto de eliminar al usuario:</label>
	              <div id="dataUser" class="text-danger"></div>
	               <input type="hidden" id="idUser" name="idUser">
	            </div>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
	          <input type="submit" class="btn btn-primary" value="Eliminar">
	        </div>
        </form>
      </div>
    </div>
  </div>
  
  
   <%
   String idParam = request.getParameter("id");
   Integer id = null;
   
   if (idParam != null && !idParam.isEmpty()) {
	    id = Integer.parseInt(idParam);
	}

   
   String name = "";
   String lastname = "";
   String email = "";
   String tel = "";
   String tema = "";
   String descripcion = "";
   String hora = "";
   String sala = ""; 

    try {
    	OradorDao daoUpd = new OradorDao();
      List<Orador> listOraUpd = daoUpd.listarOradores();

        for (Orador ora : listOraUpd) {
            if (ora.getId().equals(id)) {
            	name = ora.getName();
            	lastname = ora.getLastname();
            	email = ora.getEmail();
            	tel = ora.getTel();
              tema = ora.getTema();
              descripcion = ora.getDescripcion();
            	hora = ora.getHora();
            	sala = ora.getSala();

                break;
            }
        }

    } catch (Exception e) {
    		response.sendRedirect("listOraObjAdm.jsp?mensaje=Hubo%20un%20error.");
    }
    %>


<!-- Modal Modificar Orador-->
<div class="modal fade" id="modificarOra" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modificar Orador</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form class="" data-bitwarden-watching="1" action="../controller/updOradorObj.jsp" method="post">
	          
	          <div class="form-floating mb-3">
	            <input type="hidden" name="id" value="<%= id %>">
								<div class="form-floating mb-3">
								  <input type="text" name="name" class="form-control rounded-3" id="name" placeholder="Nombre" value="<%= name %>" required>
								  <label for="name">Nombre</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="lastname" class="form-control rounded-3" id="lastname" placeholder="Apellido" value="<%= lastname %>" required>
								  <label for="lastname">Apellido</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="email" class="form-control rounded-3" id="email" placeholder="Email" value="<%= email %>" required>
								  <label for="email">Email</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="tel" class="form-control rounded-3" id="tel" placeholder="Teléfono movil" value="<%= tel %>" required>
								  <label for="tel">Teléfono móvil</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="tema" class="form-control rounded-3" id="tema" placeholder="Tema" value="<%= tema %>" required>
								  <label for="tema">Tema</label>
								</div>
								<div class="form-floating mb-3">
								  <textarea name="descripcion" class="form-control rounded-3" id="descripcion" placeholder="Descripción" required><%= descripcion %></textarea>
								  <label for="descripcion">Descripción</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="hora" class="form-control rounded-3" id="hora" placeholder="Hora" value="<%= hora %>" required>
								  <label for="hora">Hora</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="sala" class="form-control rounded-3" id="sala" placeholder="Sala" value="<%= sala %>" required>
								  <label for="sala">Sala</label>
								</div>
							</div>
	          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Enviar Cambios</button>
	          <small class="text-body-secondary">Al hacer clic en "Agregar", acepta los términos de uso.</small>
	                  
	        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>




<!-- Modal Agregar Orador-->
<div class="modal fade" id="agregarOra" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Agregar Orador</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form class="" data-bitwarden-watching="1" action="../controller/addOradorObjAdm.jsp" method="post">
	          
	          <div class="form-floating mb-3">
	            <input type="hidden" name="id" value="<%= id %>">
								<div class="form-floating mb-3">
								  <input type="text" name="name" class="form-control rounded-3" id="name" placeholder="Nombre" value="<%= name %>" required>
								  <label for="name">Nombre</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="lastname" class="form-control rounded-3" id="lastname" placeholder="Apellido" value="<%= lastname %>" required>
								  <label for="lastname">Apellido</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="email" class="form-control rounded-3" id="email" placeholder="Email" value="<%= email %>" required>
								  <label for="email">Email</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="tel" class="form-control rounded-3" id="tel" placeholder="Teléfono movil" value="<%= tel %>" required>
								  <label for="tel">Teléfono móvil</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="tema" class="form-control rounded-3" id="tema" placeholder="Tema" value="<%= tema %>" required>
								  <label for="tema">Tema</label>
								</div>
								<div class="form-floating mb-3">
								  <textarea name="descripcion" class="form-control rounded-3" id="descripcion" placeholder="Descripción" required><%= descripcion %></textarea>
								  <label for="descripcion">Descripción</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="hora" class="form-control rounded-3" id="hora" placeholder="Hora" value="<%= hora %>" required>
								  <label for="hora">Hora</label>
								</div>
								<div class="form-floating mb-3">
								  <input type="text" name="sala" class="form-control rounded-3" id="sala" placeholder="Sala" value="<%= sala %>" required>
								  <label for="sala">Sala</label>
								</div>
							</div>
	          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Agregar Orador</button>
	          <small class="text-body-secondary">Al hacer clic en "Agregar", acepta los términos de uso.</small>
	                  
	        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="js/listUsu.js"></script>
  </body>
</html>