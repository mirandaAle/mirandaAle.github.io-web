<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./bootstrap-4.6.2-dist/bootstrap-4.6.2-dist/css/bootstrap.min.css">
  <title>Integrador</title>
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
          <a class="nav-link" href="#">Los Oradores <span class="sr-only">(current)</span></a>
          <a class="nav-link" href="#">El Lugar y la Fecha</a>
          <a class="nav-link" href="#">Conviértete en Orador</a>

          <%
                        if(session.getAttribute("email") == null){
                    %>
                    <a class="nav-link text-warning" href="register.jsp">Registrarse</a>
                    <a class="nav-link text-warning" href="login.jsp">Iniciar Sesión</a>
                    <%
                        }
          %>
          <%
             if(session.getAttribute("email") != null){
            %>
            <a class="nav-link text-success" href="tickets.jsp">Comprar Ticket</a>
            <a class="nav-link text-warning" href="logout">Cerrar Sesion</a>
           <%
               }
          %>
          <%-- Check if there is an error message --%>
          <%
              String errorMessage = (String) request.getAttribute("errorMessage");
              if (errorMessage != null && !errorMessage.isEmpty()) {
          %>
              <div class="error-message">
                  <%= errorMessage %>
              </div>
          <% } %>

        </div>
      </div>
    </nav>

  </header>

  <main>
    <!-- carrusel -->
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="./img/ba1.jpg" class="d-block w-100" alt="imagen 1">
          <div class="carousel-caption w-100" style="height: 50%; text-align: right;">
            <div class="container-xl">
              <div class="row">
                <div class="col-3"></div>
                <div class="col-7">
                  <h5>Conf Bs As</h5>
                  <p>Bs As llega por primera vez a Argentina. Un Evento para compartir con nuestra <br>comunidad el
                    conocimiento y experiencia de los expertos que están creando <br>el futuro de Internet. Ven a
                    conocer a miembres del evento, a otros estudiantes <br>de Codo a Codo y los oradores de primer nivel
                    que tenemos para ti.<br> Te esperamos!</p>
                  <p><a class="btn btn-transparen border-white text-white mb-2">Quiero Ser Orador </a> <a
                      class="btn btn-success text-white mb-2">Comprar Ticket</a></p>
                </div>
                <div class="col-2"></div>
              </div>
            </div>
          </div>
        </div>

        <div class="carousel-item">
          <img src="./img/ba2.jpg" class="d-block w-100" alt="imagen 2">
          <div class="carousel-caption w-100" style="height: 50%; text-align: right;">
            <div class="container-xl">
              <div class="row">
                <div class="col-3"></div>
                <div class="col-7">
                  <h5>Conf Bs As</h5>
                  <p>Bs As llega por primera vez a Argentina. Un Evento para compartir con nuestra <br>comunidad el
                    conocimiento y experiencia de los expertos que están creando <br>el futuro de Internet. Ven a
                    conocer a miembres del evento, a otros estudiantes <br>de Codo a Codo y los oradores de primer nivel
                    que tenemos para ti.<br> Te esperamos!</p>
                  <p><a class="btn btn-transparen border-white text-white mb-2">Quiero Ser Orador </a> <a
                      class="btn btn-success text-white mb-2">Comprar Ticket</a></p>
                </div>
                <div class="col-2"></div>
              </div>
            </div>
          </div>
        </div>

        <div class="carousel-item">
          <img src="./img/ba3.jpg" class="d-block w-100" alt="imagen 3">
          <div class="carousel-caption w-100" style="height: 50%; text-align: right;">
            <div class="container-xl">
              <div class="row">
                <div class="col-3"></div>
                <div class="col-7">
                  <h5>Conf Bs As</h5>
                  <p>Bs As llega por primera vez a Argentina. Un Evento para compartir con nuestra <br>comunidad el
                    conocimiento y experiencia de los expertos que están creando <br>el futuro de Internet. Ven a
                    conocer a miembres del evento, a otros estudiantes <br>de Codo a Codo y los oradores de primer nivel
                    que tenemos para ti.<br> Te esperamos!</p>
                  <p><a class="btn btn-transparen border-white text-white mb-2">Quiero Ser Orador </a> <a
                      class="btn btn-success text-white mb-2">Comprar Ticket</a></p>
                </div>
                <div class="col-2"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </button>
    </div>

    <!-- los card = oradores -->
    <h6 class="text-center"><br> Conoce a los</h6>
    <h3 class="text-center">LOS ORADORES</h3>
    <div class="container-fluid d-flex justify-content-around align-self-center">
      <div class="card" style="width: 18rem;">
        <img src="./img/steve.jpg" class="card-img-top" alt="imagen 4">
        <div class="card-body">
          <h6 class="badge badge-warning text-wrap d-inline" style="width: 6rem;">JavaScript</h6>
          <h6 class="badge badge-primary text-wrap d-inline" style="width: 6rem;">React</h6>
          <h5 class="card-title">Steve Jobs</h5>
          <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Optio maiores in amet
            voluptates aspernatur! Fugiat corporis repellendus officia officiis, cupiditate perferendis fuga
            voluptatibus ipsa porro fugit asperiores, voluptates non facere?</p>
        </div>
      </div>
      <div class="card" style="width: 18rem;">
        <img src="./img/bill.jpg" class="card-img-top" alt="imagen 5">
        <div class="card-body">
          <h6 class="badge badge-warning text-wrap d-inline" style="width: 6rem;">JavaScript</h6>
          <h6 class="badge badge-primary text-wrap d-inline" style="width: 6rem;">React</h6>
          <h5 class="card-title">Bill Gates</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse, et nam distinctio ea
            cupiditate mollitia obcaecati fugit quidem iure dolorem dicta doloremque nisi, facilis optio eos impedit
            labore laborum nobis!</p>
        </div>
      </div>
      <div class="card" style="width: 18rem;">
        <img src="./img/ada.jpeg" class="card-img-top" alt="imagen 6">
        <div class="card-body">
          <h6 class="badge badge-secondary text-wrap d-inline" style="width: 6rem;">Negocios</h6>
          <h6 class="badge badge-danger text-wrap d-inline" style="width: 6rem;">Startups</h6>
          <h5 class="card-title">Ada Lovelace</h5>
          <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Optio nisi repellat accusantium
            voluptate mollitia vero fugit animi libero distinctio debitis natus perferendis iusto quo, quos quam quod
            earum incidunt pariatur.</p>
        </div>
      </div>
    </div>

    <!--imagen con texto  -->

    
    <div class="row no-gutters position-relative border border-secondary" style="margin-top: 15px;">
      <div class="col-md-6 mb-md-0 p-md-0 border-top">
        <img src="./img/honolulu.jpg" class="w-100 border-right" alt="imagen 7">
      </div>
      <div class="col-md-6 position-static p-4 pl-md-4 bg-secondary text-white border-top">
        <h5>Bs As - Octubre</h5>
        <p>Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos. Honolulu
          es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al
          área urbana en la costa sureste de la isla de Oahu, la ciudad y condado de Honolulu han formado una
          ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 km2 de superficie).</p>
        <a href="#" class="stretched-link border border-white text-white">Conocé más</a>
      </div>
    </div>

    <!-- formulario -->
    

    <div class="container justify-content-around" style="margin-top: 15px; margin-bottom: 5%;">
      <h6 class="text-center text-secondary"><br> Conviértete en un</h6>
      <h3 class="text-center"> ORADOR</h3>
      <h6 class="text-center text-secondary">Anótate como orador para dar una charla ignite. Cuéntanos de qué quieres
        hablar!</h6>
      <form>
        <div class="form-row">
          <div class="col">
            <input type="text" class="form-control" placeholder="Nombre">
          </div>
          <div class="col">
            <input type="text" class="form-control" placeholder="Apellido">
          </div>
        </div>
        <div class="form-group">
          <label for="exampleFormControlTextarea1"></label>
          <textarea class="form-control" placeholder="Sobre qué quieres hablar" id="exampleFormControlTextarea1"
            rows="3"></textarea>
        </div>
        <h6 class="text-secondary form-control-sm">Recuerda incluir un titulo para tu charla.</h6>
        <button type="submit" class="btn btn-success btn-block bg-success text-white">Enviar</button>
      </form>
    </div>
  

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
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="./bootstrap-4.6.2-dist/bootstrap-4.6.2-dist/js/bootstrap.min.js"></script>
</body>

</html>