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
                    <form id="contact" method="post" class="form" role="form">
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <input class="form-control" id="name" name="name" placeholder="Nombre" type="text" required/>
                            </div>
                             <div class="col-md-6 form-group">
                                <input class="form-control" id="apellido" name="apellido" placeholder="Apellido" type="text" required/>
                            </div>
                             <div class="col-md-12 form-group">
                                <input class="form-control" id="email" name="email" placeholder="Correo Electronico" type="email" required/>
                            </div>
                            <div class="col-md-6 form-group">
                                <input class="form-control" id="cel" name="cel" placeholder="Celular (Opcional)" type="text" required/>
                            </div>
                            <div class="col-md-6 form-group">
                                <input class="form-control" id="telep" name="telephone" placeholder="Telefono Fijo (Opcional)" type="text" required/>
                            </div>
                            <div class="col-md-6 form-group">
                                <input class="form-control" id="fecha" name="fechaNacimiento" placeholder="Fecha de Nacimiento" type="date" required/>
                            </div>
                            <div class="col-md-6 form-group">
                                <input class="form-control" id="emailRec" name="emailRecuperacion" placeholder="Email de Recuperacion (Opcional)" type="email" required/>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-12 form-group">
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
