<!DOCTYPE html>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="dao.UsuarioDaoAdm"%>
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
		<div class="text-center fs-3 mt-3 mb-2">Listado de Administradores</div>
		<a class="nav-link active ms-auto m-4 fs-5" aria-current="page" href='#' data-bs-toggle='modal' data-bs-target='#addModal' idUsuario='"+id+"' user='"+user+"'>Agregar Usuarios</a>
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
			      <th scope="col">Usuario</th>
			      <th scope="col">Contraseña</th>
			      <th scope="col">Operaciones</th>
			    </tr>
			  </thead>
			  <tbody>
				    <!-- Dentro de estas etiquetas podemos programar en Java -->
				<%
				try {
					
					UsuarioDaoAdm dao = new UsuarioDaoAdm();
					List<Usuario> listUsu = dao.listarUsuario(); 

                    
                    for(Usuario usu: listUsu) {
                    	
                        out.println("<tr>");
                            out.println("<td>");
                                Integer id = usu.getId();
                                out.println(id);
                            out.println("</td>");

                            out.println("<td>");
                            	String user = usu.getUser();
                                out.println(user);
                            out.println("</td>");

                            out.println("<td>");
                                out.println(usu.getPass()); 
                            out.println("</td>");

                            out.println("<td>");
                                out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#updUsuarios' id='" + usu.getId() + "' user='" + usu.getUser() + "' pass='" + usu.getPass() + "'><i class='bi bi-pencil-fill m-1'></i></a>");
                                out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#delModal' idUsuario='"+id+"' user='"+user+"'><i class='bi bi-trash-fill m-1'></i></a>");
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
        <form action="../controller/delUsuarioObjSist.jsp" method="post">
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
  
  
  <!-- Add Usuario -->
 
	<div class="modal fade" id="addModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content rounded-4 shadow">
	      <div class="modal-header p-5 pb-4 border-bottom-0">
	        <h1 class="fw-bold mb-0 fs-2">Agregar Usuario</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	
	      <div class="modal-body p-5 pt-0">
	        <form class="" data-bitwarden-watching="1" action="../controller/addUsuarioObjSist.jsp" method="post">
	          <div class="form-floating mb-3">
	            <input type="email" name="user" class="form-control rounded-3" id="user" placeholder="usuario" onkeyup="validarUser('mensaje2', 'btnEnviar2', 'user')" required>
	            <label for="floatingInput">Usuario</label>
	          </div>
	          <div class="form-floating mb-3 position-relative">
	            <input type="password" name="pass" class="form-control rounded-3 password-toggle" id="pass" placeholder="contraseña" onkeyup="validarPass('mensaje2', 'btnEnviar2', 'pass')" required>
	            <label for="floatingPassword">Contraseña</label>
	            <i class="bi bi-toggle-off position-absolute end-0 top-50 translate-middle-y toggle-password fs-4 pe-2" data-target="pass"></i>
	          </div>
	          <div class="form-floating mb-3 position-relative">
	            <input type="password" name="repPass" class="form-control rounded-3 password-toggle" id="repPass" placeholder="contraseña" onkeyup="compararPass('mensaje2', 'btnEnviar2' ,'pass', 'repPass')" required>
	            <label for="floatingPassword">Repita Contraseña</label>
	            <i class="bi bi-toggle-off position-absolute end-0 top-50 translate-middle-y toggle-password fs-4 pe-2" data-target="repPass"></i>
		      </div>
	          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" id="btnEnviar2" type="submit" disabled="disabled">Agregar</button>
	          <small class="text-body-secondary">Al hacer clic en "Agregar", acepta los términos de uso.</small>
	                  
	        </form>
	      </div>
	      <div id="mensaje2">
	          	<%
	          		String mensaje2 = request.getParameter("mensaje2");
	            	if(mensaje2!=null){
	            		out.println("<div class='bg-danger text-center p-1 rounded text-white'>");
	            		out.println(mensaje2);
	            		out.println("</div>");
	          		}
	          	%>
	    </div>
	  </div>
	</div>
</div>

<!-- Modificar Usuario -->

<%
   String idParam = request.getParameter("id");
   Integer id = null;
   
   if (idParam != null && !idParam.isEmpty()) {
	    id = Integer.parseInt(idParam);
	}

   
   String user = "";
   String pass = "";
   

    try {
    	UsuarioDaoAdm usuUpd = new UsuarioDaoAdm();
      List<Usuario> listUsu = usuUpd.listarUsuario();

        for (Usuario usu : listUsu) {
            if (usu.getId().equals(id)) {
            	user = usu.getUser();
            	pass = usu.getPass();
           
                break;
            }
        }

    } catch (Exception e) {
    		response.sendRedirect("listadoUsuariosObj.jsp?mensaje=Hubo%20un%20error.");
    }
    %>


  
	<div class="modal fade" id="updUsuarios" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content rounded-4 shadow">
	      <div class="modal-header p-5 pb-4 border-bottom-0">
	        <h1 class="fw-bold mb-0 fs-2">Modificar Usuario</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	
	      <div class="modal-body p-5 pt-0">
	        <form class="" data-bitwarden-watching="1" action="../controller/updUsuarioObj.jsp" method="post">
	          <div class="form-floating mb-3">
	          	<input type="hidden" name="id" id="id" value="<%= id %>">
	            <input type="email" name="user" class="form-control rounded-3" id="user3" value="<%= user %>" placeholder="usuario" onkeyup="validarUser('mensaje3', 'btnEnviar3', 'user3')" required>
	            <label for="floatingInput">Usuario</label>
	          </div>
	          <div class="form-floating mb-3 position-relative">
	            <input type="password" name="pass" class="form-control rounded-3 password-toggle" id="pass3" value="<%= pass %>" placeholder="contraseña" onkeyup="validarPass('mensaje3', 'btnEnviar3', 'pass3')" required>
	            <label for="floatingPassword">Contraseña</label>
	            <i class="bi bi-toggle-off position-absolute end-0 top-50 translate-middle-y toggle-password fs-4 pe-2" data-target="pass3"></i>
	          </div>
	          <div class="form-floating mb-3 position-relative">
	            <input type="password" name="repPass" class="form-control rounded-3 password-toggle" id="repPass3"  placeholder="contraseña" onkeyup="compararPass('mensaje3', 'btnEnviar3', 'pass3', 'repPass3')" required>
	            <label for="floatingPassword">Repita Contraseña</label>
	            <i class="bi bi-toggle-off position-absolute end-0 top-50 translate-middle-y toggle-password fs-4 pe-2" data-target="repPass3"></i>
		      </div>
		        <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" id="btnEnviar3" type="submit" disabled="disabled">Modificar</button>
	          <small class="text-body-secondary">Al hacer clic en "Agregar", acepta los términos de uso.</small>
	                  
	        </form>
	      </div>
	      <div id="mensaje3">
	          	<%
	          		String mensaje3 = request.getParameter("mensaje3");
	            	if(mensaje3!=null){
	            		out.println("<div class='bg-danger text-center p-1 rounded text-white'>");
	            		out.println(mensaje3);
	            		out.println("</div>");
	          		}
	          	%>
	    </div>
	  </div>
	</div>
</div>
  

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="js/listUsuSist.js"></script>
    <script src="js/registroSist.js"></script>
  </body>
</html>