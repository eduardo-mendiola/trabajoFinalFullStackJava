<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es" data-bs-theme="dark">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Codo A Codo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <script type="text/javascript" src="http://me.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=dkF6R1X9APNAMUqinnMMM9spboDcSdtWRBQkjAx_Kc4O6_oeHcpqgNJeCG82YelW1PlMj3HVGia6lnvzVJWx7nfiP9fH36YQgpEQ82wJWUc" charset="UTF-8"></script></head>
  <body>
    
 <div> 
	<div class="modal modal-sheet position-static d-block bg-body-secondary p-4 py-md-5" tabindex="-1" role="dialog" id="modalSignin">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content rounded-4 shadow">
	      <div class="modal-header p-5 pb-4 border-bottom-0">
	        <h1 class="fw-bold mb-0 fs-2">Login de Sistema de Usuarios</h1>
	        <button type="button" class="btn-close" onclick="window.location.href='inicio.jsp'" aria-label="Close"></button>
	      </div>
	
	      <div class="modal-body p-5 pt-0">
	        <form class="" data-bitwarden-watching="1" action="../controller/checkLoginObjSist.jsp" method="post">
	          <div class="form-floating mb-3">
	            <input type="text" name="user" class="form-control rounded-3" id="floatingInput" placeholder="usuario" required>
	            <label for="floatingInput">Usuario</label>
	          </div>
	          <div class="form-floating mb-3">
	            <input type="password" name="pass" class="form-control rounded-3" id="floatingPassword" placeholder="contraseña" required>
	            <label for="floatingPassword">Contraseña</label>
	          </div>
	          <div class="form-check text-start my-3">
                <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault" wfd-id="id2">
                <label class="form-check-label" for="flexCheckDefault">Recordar Usuario</label>
              </div>
	          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Ingresar</button>
	          <small class="text-body-secondary">Al hacer clic en "Ingresar", acepta los términos de uso.</small>
	      	  <div>
	          	
	          </div>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
</div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>