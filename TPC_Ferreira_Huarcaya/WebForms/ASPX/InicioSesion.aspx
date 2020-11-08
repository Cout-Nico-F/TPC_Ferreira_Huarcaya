<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="WebForms.ASPX.InicioSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
     <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous"/>
    <!--CSS Estilos -->
    <link href="../CSS/Estilos_Sesion.css" rel="stylesheet" />

    <title>Iniciar Sesion</title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>

    <script>
        /*
          Estas son validaciones que si funcionan
          Las validaciones las piden en el Paso 2 creo recordar
         */
        function validar() {
            var email, password, expresionesReg;
            email = document.getElementById("email").value;
            password = document.getElementById("password").value;

            expresionesReg = /\w+@\w+\.+[a-z]/;

            if (email == "" || password == "") {
                alert("Todos los campos son obligatorios");
                return false; //con esto evitamos que los datos sean enviados despues de presionar aceptar
            }
            else if (password.length > 20) {
                alert("La password es muy larga");
                return false;
            }
            else if (!expresionesReg.test(email)) {
                alert("El email es invalido");
                return false;
            }
            else if (email.length > 30) {
                alert("El email es demasiado largo");
                return false;
            }
        }

    </script>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
        <a class="navbar-brand" href="#">
             <img src="../Imagenes/icono_ecommerce.png" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy" style=" background-color: rgba(255, 0, 0, 0.5);"> <!-- No puedo hacer transparente el fonde de la imagen -->
            Bootstrap!</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent"><!-- el ID anterior era : navbarNavAltMarkup -->
        <div class="navbar-nav mr-auto ml-auto text-center">
            <a class="nav-link" href="Home.aspx">Home</a>
            <a class="nav-link" href="Catalogo.aspx">Catalogo</a>
            <a class="nav-link" href="Info.aspx">Informacion</a>
            <a class="nav-link" href="Contacto.aspx">Contacto</a>
        </div>
        <div>
            <a href="InicioSesion.aspx" class="btn btn-primary"><i class="fas fa-user"></i></a>
            <a href="Login.aspx" class="btn btn-primary"><i class="fas fa-shopping-cart"></i></a>
        </div>
    </div>
    </nav>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

     <div class="modal-dialog text-center border-0">
        <div class="col-sm-12">
            <div class="modal-content">
                <div class="col-12">
                 <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRW6X2lldt_gy2tcbXCKBbKWNVBpH-f1Mcjsw&usqp=CAU" alt="Alternate Text" /> 
                </div>
                <form class="col-12" onsubmit="return validar();">
                    <div class="form-group">
                        <input id="email" type="email" class="form-control" placeholder="Correo Electronico" required />
                    </div>
                    <div class="form-group">
                        <input id="password" type="password" class="form-control" placeholder="Contraseña" required />
                    </div>
                   <!--<button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  Ingresar</button> -->
                    <input type="submit" value="Registrar" class="btn btn-primary" />
                </form>
               <div class="col-12">
                   <label>No tiene una cuenta?</label>
                   <a href="CrearCuenta.aspx">Crear cuenta</a>
               </div>
                 <div class="col-12">
                   <label>Olvido su contraseña</label>
                   <a href="RecuperarContraseña.aspx">Recuperar contraseña</a>
               </div>
            </div>
        </div>
    </div>

</body>
</html>
