<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
   <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/stylo.css">
    <link rel="stylesheet" href="./bootstrap-4.6.2-dist/bootstrap-4.6.2-dist/css/bootstrap.min.css">
    <title>Iniciar Sesion</title>
   </head>
   <body class="fondo" style="margin-top: 5%; margin-bottom: 5%;">
     <main>
       <div class="contRegistrarse container d-flex" style="margin-top: 5%; width: 40%; margin-bottom: 5%;">
         <div class="container align-items-center justify-content-center" style="margin-bottom: 3%; margin-top: 8%;">
           <h1 id="titulo" class="text-center text-secondary text-warning"><p class="text-dark">Login</p></h1>
            <form action="login" method="post">
              <div class="form-row">
                <div class="col">
                  <input type="email" id="inputCorreo" class="form-control" placeholder="Correo" name="email" required>
                </div>
              </div>
              <div class="form-row">
                <div class="col" style="margin-bottom: 10px; margin-top: 10px;">
                  <input id="contrasenia" type="password" class="form-control  width: 50%;" placeholder="contrasena" name="contrasenia" required>
                </div>
              </div>
              <div class="d-flex justify-content-center align-content-center">
                <button type="submit" id="buton" class="btn btn-success justify-content-center align-content-center ">Login</button>
              </div>
            </form>
              <h5 class="text-center text-primary"> ó </h5>
            <form action="register.jsp">
               <div class="d-flex justify-content-center align-content-center">
                  <button id="butonBorrar" type="submit" class="btn btn-success justify-content-center align-content-center" value="Registrarse">Sing Up</button>
               </div>
            </form>
         </div>
       </div>
     </main>
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
      <script src="./bootstrap-4.6.2-dist/bootstrap-4.6.2-dist/js/bootstrap.min.js"></script>
   </body>
</html>