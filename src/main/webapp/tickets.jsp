<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./bootstrap-4.6.2-dist/bootstrap-4.6.2-dist/css/bootstrap.min.css">
    <title>Comprar Ticket</title>
</head>
<body>
    <header>
        <!-- menu superior -->
        <nav class="navbar navbar-expand-xl navbar-dark bg-secondary text-white fixed-top">
          <img src="./img/codoacodo.png" alt="logo">
          <a class="navbar-brand" href="#">Conf Bs As</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link" href="index.jsp">Los Oradores <span class="sr-only">(current)</span></a>
              <a class="nav-link" href="#">El Lugar y la Fecha</a>
              <a class="nav-link" href="#">Conviértete en Orador</a>
              <a class="nav-link text-success" href="#">Comprar Ticket</a>
            </div>
          </div>
        </nav>
    
      </header>

      <main>
        <div class="container" style="margin-top: 5%; width: 50%; margin-bottom: 5%;">
            <div class="container align-items-center" style="margin-bottom: 3%;">
                <div class="row">
                    <div class="col-4" style="max-width:none; padding-left: 1%; padding-right: 1%;">
                      <div class="card w-100 border-danger">
                        <div class="card-body" style="text-align: center; padding-left: 5%; padding-right: 5%;">
                          <h5 class="card-title">Estudiante</h5>
                          <p class="card-text" style="font-size:small;">Tiene un descuento</p>
                          <p class="card-text font-weight-bold">80%</p>
                          <p class="card-text" style="font-size: 60%;">*Presentar documentación</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-4" style="max-width:none; padding-left: 1%; padding-right: 1%; border-color: blue;">
                      <div class="card w-100  border-danger">
                        <div class="card-body" style="text-align: center; padding-left: 5%; padding-right: 5%;">
                          <h5 class="card-title">Trainee</h5>
                          <p class="card-text" style="font-size:small;">Tiene un descuento</p>
                          <p class="card-text font-weight-bold">50%</p>
                          <p class="card-text" style="font-size: 60%;">*Presentar documentación</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-4" style="max-width:none; padding-left: 1%; padding-right: 1%; border-color: aqua ;">
                        <div class="card w-100  border-danger">
                          <div class="card-body" style="text-align: center; width: 100; padding-left: 5%; padding-right: 5%;">
                            <h5 class="card-title">Junior</h5>
                            <p class="card-text" style="font-size:small;">Tiene un descuento</p>
                            <p class="card-text font-weight-bold">15%</p>
                            <p class="card-text" style="font-size: 60%;">*Presentar documentación</p>
                          </div>
                        </div>
                      </div>
                  </div>
            </div>
            <h6 class="text-center text-secondary"> VENTA</h6>
            <h3 class="text-center">VALOR DE TICKETS $200 </h3>
            
            <form>
              <div class="form-row">
                <div class="col-6" style="margin-bottom: 10px; margin-top: 10px;">
                  <input type="text" id="inputNombre" class="form-control" placeholder="Nombre">
                </div>
                <div class="col-6" style="margin-bottom: 10px; margin-top: 10px;">
                  <input type="text" id="inputApellido" class="form-control" placeholder="Apellido">
                </div>
                <div class="col">
                  <input type="text" id="inputCorreo" class="form-control" placeholder="Correo">
                </div>
              </div>
              
              <div class="form-row">
                <div class="col-6" style="margin-bottom: 10px; margin-top: 10px;">
                  <h6>Cantidad</h6>
                  <input id="inputCantidad" type="text" class="form-control">
                </div>
                <div class="col-6" style="margin-bottom: 10px; margin-top: 10px;">
                  <h6>Categoria</h6>
                  <div class="btn-group border border-muted w-100">
                    <button id="botonCategoria" class="btn" type="button" style="text-align: left;">
                      
                    </button>
                    <button type="button" class="btn dropdown-toggle dropdown-toggle-split" style="text-align: end;" data-toggle="dropdown" aria-expanded="false">
                      <span class="sr-only"></span>
                    </button>
                    <div id="selecBox" class="dropdown-menu">
                      <a class="dropdown-item" opcion1 href="#">Estudiante</a>
                      <a class="dropdown-item" opcion2 href="#">Trainee</a>
                      <a class="dropdown-item" opcion3 href="#">Junior</a>
                    </div>
                    </div>
                  </div>
                </div>
                <div class="col">
                  <p id="textoTotal" class="form-control alert alert-primary">Total a Pagar:$ </p>
                </div>
                <div class="form-row">
                  <div class="col-6" style="margin-bottom: 3%; margin-top: 0,5%;">
                    <button id="butonBorrar" type="button" class="btn btn-success btn-lg btn-block">Borrar</button>
                  </div>
                  <div class="col-6" style="margin-bottom: 6px; margin-top: 0,5%;">
                    <button id="btnMostrarResultado" type="button" class="btn btn-success btn-lg btn-block">Resumen</button>
                  </div>
            </form>
      </main>

      <footer>
        <nav class="navbar navbar-expand-md text-white navbar-dark bg-secondary fixed-bottom">
          <div class="collapse navbar-collapse justify-content-around" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item ">
                <a class="nav-link" href="#">Preguntas frecuentes <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Contáctanos</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Prensa</a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="#">Conferencias</a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="#">Términos y condiciones</a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="#">Privacidad</a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="#">Estudiantes</a>
              </li>
            </ul>
          </div>
        </nav>
        
    </footer>
      <script src="./js/app.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
      <script src="./bootstrap-4.6.2-dist/bootstrap-4.6.2-dist/js/bootstrap.min.js"></script>
</body>
</html>