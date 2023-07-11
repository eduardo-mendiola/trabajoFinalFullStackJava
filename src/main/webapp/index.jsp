<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en" data-bs-theme="dark">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio integrador - Codo a Codo</title>
    <!-- Bootstrap Css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <!-- Bootstrap icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <!-- Css Local -->
    <link rel="stylesheet" href="view/css/styles.css">
  </head>
  <body>
    <!-- Header-Nav -->
    <section>
      <nav id="span-top" class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
        <div class="container-fluid">
          <a class="navbar-brand ms-0" href="index.jsp">
            <img class="logo-codoacodo" src="view/images/codoacodo.png" alt="Logo de Codo a Codo">
            <span class="fs-5">Conf BsAs</span>
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#conferencia">La Conferencia</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#oradores">Los oradores</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#fecha">Lugar y Fecha</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#conviertete">Conviértete en un orador</a>
              </li>
              <li class="nav-item">
                <a class="comprar-ticket nav-link" href="compraTicket.jsp">Comprar Tickets</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="view/loginObj.jsp">Ingreso Admin</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </section>


    <!-- carrusel -->
    <section>
      <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
            aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
            aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
            aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="view/images/hawaii.jpg" class="d-block w-100 b-5" alt="h1">
            <div class="carousel-caption d-none d-md-block text-end mb-5">
              <div class="row mb-3">
                <div class="col-md-4 col-0"></div>
                <div id="conferencia" class="texto-carrusel col-md-8 col-12 text-white">
                  <h5 class="fs-2">Conf BsAs</h5>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos voluptates assumenda
                    deserunt impedit perspiciatis similique eligendi iste magnam nobis sit optio aliquam maiores
                    quaerat dolores, dolorem distinctio inventore quod ratione!</p>
                  <div>
                    <a href="#conviertete" class="btn btn-outline-light">Quiero ser orador</a>
                    <a href="compraTicket.jsp" class="btn btn-success">Comprar Tickets</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img src="view/images/hawaii2.jpg" class="d-block w-100" alt="h2">
            <div class="carousel-caption d-none d-md-block text-end mb-5">
              <div class="row mb-3">
                <div class="col-md-4 col-0"></div>
                <div id="conferencia" class="texto-carrusel col-md-8 col-12 text-white">
                  <h5 class="fs-2">Conf BsAs</h5>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos voluptates assumenda
                    deserunt impedit perspiciatis similique eligendi iste magnam nobis sit optio aliquam maiores
                    quaerat dolores, dolorem distinctio inventore quod ratione!</p>
                  <div>
                    <a href="#conviertete" class="btn btn-outline-light">Quiero ser orador</a>
                    <a href="compraTicket.jsp" class="btn btn-success">Comprar Tickets</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img src="view/images/hawaii3.jpg" class="d-block w-100" alt="h3">
            <div class="carousel-caption d-none d-md-block text-end mb-5">
              <div class="row mb-3">
                <div class="col-md-4 col-0"></div>
                <div id="conferencia" class="texto-carrusel col-md-8 col-12 text-white">
                  <h5 class="fs-2">Conf BsAs</h5>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos voluptates assumenda
                    deserunt impedit perspiciatis similique eligendi iste magnam nobis sit optio aliquam maiores
                    quaerat dolores, dolorem distinctio inventore quod ratione!</p>
                  <div>
                    <a href="#conviertete" class="btn btn-outline-light">Quiero ser orador</a>
                    <a href="compraTicket.jsp" class="btn btn-success">Comprar Tickets</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="bi bi-chevron-compact-left fs-3" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="bi bi-chevron-compact-right fs-3" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </section>
    <!-- Oradores -->
    <section>
      <!-- Titulo -->
      <div class="mt-5 mb-3 text-center" id="oradores">
        Conozca a los
        <div class="fs-3">
          ORADORES
        </div>
      </div>
      <!-- Cards -->
      <div class="d-flex flex-column align-items-center flex-md-row justify-content-center mb-1 ">
        <!-- Orador Steve -->
        <div class="card-css card mx-1 mb-3">
          <img src="view/images/steve.jpg" class="card-img-top" alt="st">
          <div class="card-body">
            <div class="d-flex mb-3">
              <a href="#" class="btn btn-warning btn-sm mx-1">JavaScript</a>
              <a href="#" class="btn btn-info text-light btn-sm mx-1">React</a>
            </div>
            <h5 class="card-title mb-2">Steve Jobs</h5>
            <p class="card-text textoChico text-sencodary">Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Esse reiciendis ex alias nam
              totam debitis delectus! Sit a, animi consequatur porro cumque rerum optio, explicabo laudantium
              cupiditate, ea eum perspiciatis.</p>
          </div>
        </div>

        <!-- orador bill -->
        <div class="card-css card mx-1 mb-3">
          <img src="view/images/bill.jpg" class="card-img-top" alt="st">
          <div class="card-body">
            <div class="d-flex mb-3">
              <a href="#" class="btn btn-warning btn-sm mx-1">Java</a>
              <a href="#" class="btn btn-info text-light btn-sm mx-1">SpringBoot</a>
            </div>
            <h5 class="card-title mb-2">Bill Gates</h5>
            <p class="card-text textoChico text-sencodary">Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Esse reiciendis ex alias nam
              totam debitis delectus! Sit a, animi consequatur porro cumque rerum optio, explicabo laudantium
              cupiditate, ea eum perspiciatis.</p>
          </div>
        </div>

        <!-- orador ada -->
        <div class="card-css card mx-1 mb-3">
          <img src="view/images/ada.jpeg" class="card-img-top" alt="st">
          <div class="card-body">
            <div class="d-flex mb-3">
              <a href="#" class="btn btn-secondary btn-sm mx-1">Negocios</a>
              <a href="#" class="btn btn-danger text-light btn-sm mx-1">Startups</a>
            </div>
            <h5 class="card-title mb-2">Ada Lovelace</h5>
            <p class="card-text textoChico text-sencodary">Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Esse reiciendis ex alias nam
              totam debitis delectus! Sit a, animi consequatur porro cumque rerum optio, explicabo laudantium
              cupiditate, ea eum perspiciatis.</p>
          </div>
        </div>
      </div>
      <div class="text-center mb-5">
      	<!-- Button trigger modal -->
		<button type="button" class="btn fs-5" data-bs-toggle="modal" data-bs-target="#exampleModal">
		  Oradores y los horarios 
		</button>      
      </div>
    </section>
    <section>
    	<!-- Modal -->
		<div class="modal-dialog modal-dialog-scrollable">
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Oradores</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <jsp:include page="view/listadoOradoresObj.jsp"/>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
		</div>
    </section>
    
    <!-- Fechas y lugar -->
    <section id="fecha">
      <div class="card mb-3" style="max-width: 100%;">
        <div class="row g-0">
          <div class="col-md-4 col-lg-6" >
            <img src="view/images/honolulu.jpg" class="img-fluid rounded-start" alt="imagen-playa">
          </div>
          <div class="col-md-8 col-lg-6 bg-dark text-white">
            <div class="card-body">
              <h5 class="card-title fs-4 text">Bs As - Octubre</h5>
              <p class="text-card-css card-text">Buenos Aires es la provincia y localidad más grande del estado Argentino. En los Estados Unidos, Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 km2 de superficie).</p>
              <a href="#" class="btn btn-outline-light" style="font-size: 0.8rem">Conocé más</a>
              <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- formulario inscripción oradores -->
    <section id="conviertete">
      <div class="text-center">
        <p class="mt-5 mb-1">CONVIÉRTETE EN UN</p>
        <p class="fs-2">ORADOR</p>
        <p class="mt-1">Anótate como orador para dar una <span class="subrayado-puntos">charla ignite</span>. Cuéntanos de qué quieres hablar!</p>
      </div>      
      <div class="form-orador container">
        <form action="controller/addOradorObj.jsp" method="post">
          <div class="row">
            <div class="col-md mb-3">
              <input type="text" name="name" id="name" class="form-control" required placeholder="Nombre">
            </div>
            <div class="col-md mb-3">
              <input type="text" name="lastname" id="lastname" class="form-control" required placeholder="Apellido">
            </div>
          </div>

          <div class="row">
            <div class="col-md mb-3">
              <input type="email" name="email" id="email" class="form-control" required placeholder="Email">
            </div>
            <div class="col-md mb-3">
              <input type="text" name="tel" id="tel" class="form-control" required placeholder="Teléfono movil">
            </div>
          </div>
          
          <fieldset class="d-flex flex-column align-items-center justify-content-center">
            <label for="descripcion">
           	  <input type="text" name="tema" id="tema" class="form-control col-md mb-3" required placeholder="Escribe el tema">
              <textarea id="descripcion" maxlength="250" class="form-control" rows="5" cols="100"  name="descripcion"  placeholder="Sobre qué quieres hablar?" style="width: 100%;"></textarea>
            </label>
            <small class="mt-2 mb-2">Recuerda incluir un título para tu charla.</small>
            <input type="submit" value="Enviar" class="btn btn-primary mt-3 mb-2" style="width: 100%;">
            	<%
	          		String mensaje = request.getParameter("mensaje");
	            	if(mensaje!=null){
	            		out.println("<div class='bg-secondary text-center p-1 rounded text-white mb-5' style='width: 100%;'>");
	            		out.println(mensaje);
	            		out.println("</div>");
	          		}
	          	%>
          </fieldset>
       </form>
     </div>
       
    </section>
  
    <footer>
      <div class="pie-pagina d-flex justify-content-evenly align-items-center">
        <div><a href="#">Preguntas frecuentes</a></div>
        <div><a href="#">Contáctanos</a></div>
        <div><a href="#">Prensa</a></div>
        <div><a href="#">Conferencias</a></div>
        <div><a href="#">Términos y condiciones</a></div>
        <div><a href="#">Privacidad</a></div>
        <div><a class="" href="view/loginObj.jsp">Ingreso Admin</a></div>
      </div>
    </footer>

    <!-- Boton flotante -->
    <div id="div-totop" class="cmn-divfloat">
      <a href="#span-top" class="btn btn-primary cmn-btncircle">
        <i class="bi bi-arrow-up"></i>
      </a>
    </div>

    <!-- JavaScrip local -->
    <script src="view/js/script.js"></script>

    <!-- Bootstrap JavaScript-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
      crossorigin="anonymous"></script>
  </body>
</html>