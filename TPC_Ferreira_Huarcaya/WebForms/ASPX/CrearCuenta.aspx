﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearCuenta.aspx.cs" Inherits="WebForms.ASPX.CrearCuenta" %>

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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
        <a class="navbar-brand" href="#">
             <img src="../Imagenes/icono_ecommerce.png" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy" style=" background-color: rgba(255, 0, 0, 0.5);"> <!-- No puedo hacer transparente el fonde de la imagen -->
            FerreAlo</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent"><!-- el ID anterior era : navbarNavAltMarkup -->
        <div class="navbar-nav mr-auto ml-auto text-center">
            <a class="nav-link" href="Home.aspx">Home</a>
            <a class="nav-link" href="Catalogo.aspx">Catalogo</a>
            <a class="nav-link" href="Info.aspx">Informacion</a>
        </div>
        <div>
            <div class="boton-nav-user">
                <a href="InicioSesion.aspx" style="color:white; margin-right:30px;"><i class="fas fa-user"></i></a>
                <a href="CarritoCompra.aspx" style="color:white; margin-right:80px;"><i class="fas fa-shopping-cart"></i></a>   
            </div>
        </div>
    </div>
    </nav>

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
                            <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="txtNombreApellido" Text="Nombre/s y Apellido/s" CssClass="form-control"></asp:TextBox>
                            </div>
                             <div class="col-md-6 form-group">
                                <asp:TextBox runat="server" ID="txtTelefonoMovil" Text="Telefono Movil" CssClass="form-control"></asp:TextBox>
                            </div>
                             <div class="col-md-6 form-group">
                                <asp:TextBox runat="server" ID="txtTelefonoFijo" Text="Telefono Fijo" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6 form-group">
                                <asp:TextBox runat="server" ID="txtEmail" Text="Correo electronico" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6 form-group">
                                <asp:TextBox runat="server" ID="txtFechaNacimiento" Text="Fecha de Nacimiento" CssClass="form-control"></asp:TextBox><%--datetime porque la variable en el modelo tambien es datetime--%>
                            </div>
                             <div class="col-md-12 form-group">
                               <asp:TextBox runat="server" ID="txtNombreUsuario" Text="Nombre Usuario" CssClass="form-control"></asp:TextBox>
                            </div>
                             <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="txt_Contrasenia" Text="Contraseña" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-6 form-group">
                            <asp:Button Text="Crear Cuenta" runat="server" CssClass="btn btn-primary" ID="btn_CrearCuenta" OnClick="btn_CrearCuenta_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
