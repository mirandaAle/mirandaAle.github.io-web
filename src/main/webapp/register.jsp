<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
   <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./css/stylo.css">
    <link rel="stylesheet" href="./bootstrap-4.6.2-dist/bootstrap-4.6.2-dist/css/bootstrap.min.css">
    <title>Registrarse</title>
   </head>
   <body class="fondo" style="margin-top: 5%; margin-bottom: 5%;">
     <main>
       <div class="contRegistrarse container d-flex" style="margin-top: 5%; width: 40%; margin-bottom: 5%;">
         <div class="container align-items-center justify-content-center" style="margin-bottom: 6%; margin-top: 8%;">
            <h1 id="tilulo" class="text-center text-warning"><p class="text-dark">Sing Up</p></h1>
              <form action="register" method="post">
                <div class="form-row">
                  <div class="col-6" style="margin-bottom: 10px; margin-top: 10px;">
                      <input name="nombre" type="text" id="inputNombre" class="form-control bg-transparent" placeholder="Nombre" required>
                  </div>
                  <div class="col-6" style="margin-bottom: 10px; margin-top: 10px;">
                     <input name="apellido" type="text" id="inputApellido" class="form-control bg-transparent" placeholder="Apellido"required>
                  </div>
                  <div class="col">
                    <input name="email" type="text" id="inputCorreo" class="form-control bg-transparent" placeholder="Correo" required>
                  </div>
                </div>
                <div class="form-row">
                  <div class="col" style="margin-bottom: 10px; margin-top: 10px;">
                      <input name="contrasenia" id="inputContrasenia" type="text" class="form-control bg-transparent" placeholder="contrasena" required>
                  </div>
                </div>
                <div class="d-flex justify-content-center align-content-center">
                    <button id="btnRegistrarse" type="submit" class="btn btn-success">Sing Up</button>
                </div>
              </form>
                <h5 class="text-center text-primary"> ó </h5>
              <form action="login.jsp">
                <div class="d-flex justify-content-center align-content-center">
                  <button id="btnIniciar" type="submit" class="btn btn-success justify-content-center align-content-center" value="Iniciar Sesión">Login</button>
                </div>
              </form>
         </div>
       </div>
     </main>
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