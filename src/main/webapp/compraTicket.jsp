<!DOCTYPE html>
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
          <a class="navbar-brand me-0" href="index.jsp">
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
                <a class="nav-link active" aria-current="page" href="index.jsp#conferencia">La Conferencia</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="index.jsp#oradores">Los oradores</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="index.jsp#fecha">Lugar y Fecha</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="index.jsp#conviertete">Conviértete en un orador</a>
              </li>
              <li class="nav-item">
                <a class="comprar-ticket nav-link" href="#comprar">Comprar Tickets</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </section>

    <!-- Descuentos -->
    <section>
      <!-- Cards -->
      <div class="d-flex flex-column align-items-center flex-md-row justify-content-center mb-2 mt-5 ">
        <!-- Estudiantes -->
        <div class="card-css card mx-1 mb-3 text-center border-primary border-2">
          <div class="card-body">
            <h5 class="card-title mb-2">Estudiantes</h5>
            <p class="card-text textoChico text-sencodary">Tiene un escuento de</p>
            <p class="card-text fs-3">%80</p>
            <p class="card-text textoChico text-sencodary">* Presentar documentación.</p>
          </div>
        </div>

        <!-- Trainee -->
        <div class="card-css card mx-1 mb-3 text-center border-success border-2">
          <div class="card-body">
            <h5 class="card-title mb-2">Trainne</h5>
            <p class="card-text textoChico text-sencodary">Tiene un escuento de</p>
            <p class="card-text fs-3">%50</p>
            <p class="card-text textoChico text-sencodary">* Presentar documentación.</p>
          </div>
        </div>

        <!-- Junior -->
        <div class="card-css card mx-1 mb-3 text-center border-warning border-2">
          <div class="card-body">
            <h5 class="card-title mb-2">Junior</h5>
            <p class="card-text textoChico text-sencodary">Tiene un escuento de</p>
            <p class="card-text fs-3">%15</p>
            <p class="card-text textoChico text-sencodary">* Presentar documentación.</p>
          </div>
        </div>
      </div>
    </section>


    <!-- formulario compra de ticket -->
    <div class="form-orador container" id="comprar">
      <!-- Titulo -->
      <div class="fs-5 my-2 mt-5 text-center">Venta</div>
      <div class="fs-4 my-4 mt-1 text-center">VALOR DEL TICKET $1000</div>
      <form action="#" method="post">
        <div class="row">
          <div class="col-md mb-3">
            <input type="text" name="nombre" id="nombre" class="form-control" required placeholder="Nombre">
          </div>
          <div class="col-md mb-3">
            <input type="text" name="apellido" id="apellido" class="form-control" required placeholder="Apellido">
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

        <div class="row">
          <div class="col-md mb-3">
            <input type="number" min="1" name="cantEntradas" id="cantEntradas" oninput="calPrecioFinal()" class="form-control"
              required placeholder="Cantidad de entradas">
              <small>* Particular no tiene descuento.</small>
          </div>
          <div class="col-md mb-3">
            <select class="form-select" id="porcDescuento" onchange="calPrecioFinal()">
              <option value="0">Particular</option>
              <option value="80">Estudiante</option>
              <option value="50">Trainee</option>
              <option value="15">Junior</option>
            </select>
          </div>
          <div class="col-md mb-3">
            <input type="text" name="valorTotal" id="valorTotal" disabled class="form-control"
              placeholder="Valor total con descuento">
          </div>
        </div>

        <div class="row">
          <div class="col-md mb-3">
            <input type="submit" value="Comprar" class="btn btn-success mt-3 mb-5 form-control">
          </div>
          <div class="col-md mb-3">
            <input type="reset" value="Borrar" class="btn btn-secondary mt-3 mb-5 form-control">
          </div>

        </div>
      </form>
    </div>
  
    <footer>
      <div class="pie-pagina d-flex justify-content-evenly align-items-center">
        <div><a href="#">Preguntas frecuentes</a></div>
        <div><a href="#">Contáctanos</a></div>
        <div><a href="#">Prensa</a></div>
        <div><a href="#">Conferencias</a></div>
        <div><a href="#">Términos y condiciones</a></div>
        <div><a href="#">Privacidad</a></div>
        <div><a href="#">Estudiantes</a></div>
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