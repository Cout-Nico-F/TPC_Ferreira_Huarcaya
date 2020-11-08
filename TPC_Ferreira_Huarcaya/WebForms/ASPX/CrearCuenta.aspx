<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearCuenta.aspx.cs" Inherits="WebForms.ASPX.CrearCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
         <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
     <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous"/>
    <title>Crear Cuenta</title>
</head>
<body>

    <script>

        function validar() {
            var nombre, apellido, nombreUsuario, contrasenia, expresionReg;
            nombre = document.getElementById("nombre");
            apellido = document.getElementById("apellido");
            nombreUsuario = document.getElementById("NombreUsu");
            contrasenia = document.getElementById("contrasenia");

            expresionesReg = /\w+@\w+\.+[a-z]/;

            if (nombre == "" || apellido == "" || nombreUsuario == "" || contrasenia == "") {
                alert("Todos los campos son obligatorios");
                return false;
            }
            else if (nombre.length > 20 ) {
                alert("El campo nombre es demasiado largo");
                return false;
            }
            else if (apellido.length > 20) {
                alert("El campo apellido es demasiado largo");
                return false;
            }
            else if (nombreUsuario.length > 10 ) {
                alert("El campo Nombre Usuario es demasiado largo");
                return false;
            }
            else if (contrasenia.length > 20) {
                alert("El campo Contraseña es demasiado largo");
                return false;
            }
            else if (!expresionesReg.test(email)) {
                alert("El email es invalido");
                return false;
            }
        }

    </script>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <form id="form1" runat="server">
       <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="section-title">Creando Cuenta...</h2>
                    <p class="section-description">__________  __________   ____________  ________   _____________   __________   ____________</p>
                    <br />
                    <br />
                </div>
                <div class="col-md-12 col-md-offset-2">
                    <form id="contact" method="post" class="form" role="form" onsubmit="return validar();">
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <input class="form-control" id="nombre" name="name" placeholder="Nombre" type="text" required/>
                            </div>
                             <div class="col-md-6 form-group">
                                <input class="form-control" id="apellido" name="apellido" placeholder="Apellido" type="text" required/>
                            </div>
                             <div class="col-md-12 form-group">
                                <input class="form-control" id="NombreUsu" name="NombreUsuario" placeholder="Nombre Usuario" type="text" required/>
                            </div>
                             <div class="col-md-12 form-group">
                                <input class="form-control" id="contrasenia" name="contrasenia" placeholder="Contraseña" type="text" required/>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-6 form-group">
                            <button class="btn btn-primary">Enviar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
