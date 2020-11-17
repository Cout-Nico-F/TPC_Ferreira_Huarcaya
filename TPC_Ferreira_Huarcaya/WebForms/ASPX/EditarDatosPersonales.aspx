﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarDatosPersonales.aspx.cs" Inherits="WebForms.ASPX.EditarDatosPersonales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
     <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!--CSS Estilos -->
    <link href="#" rel="stylesheet" />
    
    <title>Editar Datos Personales</title>

</head>
<body>
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
        <a class="navbar-brand" href="#">
             <img src="../Imagenes/icono_ecommerce.jpg" width="30" height="30" class="d-inline-block align-top" alt="icono_E-commerce" style="background-color:transparent" /> <!-- No puedo hacer transparente el fonde de la imagen -->
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
            </div>
        </div>
    </div>
    </nav>

         <form id="form2" runat="server">
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
                    <form id="contact" method="post" class="form" role="form" ">
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <asp:Label Text="Nombre y Apellido" runat="server" />
                                <asp:TextBox runat="server" ID="txtNombreApellido" Placeholder="Nombre/s y Apellido/s" CssClass="form-control"></asp:TextBox>
                            </div>
                             <div class="col-md-6 form-group">
                                 <asp:Label Text="Telefono Movil" runat="server" />
                                <asp:TextBox runat="server" ID="txtNombreUsuario" Placeholder="Nombre Usuario" CssClass="form-control"></asp:TextBox>
                            </div>
                             <div class="col-md-6 form-group">
                                 <asp:Label Text="Telefono Movil" runat="server" />
                                <asp:TextBox runat="server" ID="txtContrasenia" Placeholder="Contraseña" CssClass="form-control"></asp:TextBox>
                            </div>
                             <div class="col-md-12 form-group">
                                 <asp:Label Text="Telefono Movil" runat="server" />
                                <asp:TextBox runat="server" ID="txtTelefonoMovil" Placeholder="Telefono Movil (opcional)" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            </div>
                             <div class="col-md-12 form-group">
                                <asp:Label Text="Telefono Fijo" runat="server" />
                                 <asp:TextBox runat="server" ID="txtTelefonoFijo" Placeholder="Telefono Fijo (opcional)" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="col-md-12 form-group">
                                <asp:Label Text="Correo electronico" runat="server" />
                                <asp:TextBox runat="server" ID="txtEmail" Placeholder="Correo electronico" CssClass="form-control" TextMode="Email"></asp:TextBox>
                            </div>
                            <asp:Label Text="Fecha de Nacimiento" runat="server" />
                            <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="txtFechaNacimiento" Placeholder="Fecha de Nacimiento" CssClass="form-control" TextMode="DateTime"></asp:TextBox>
                            </div>
                             <div class="col-md-12 form-group">
                                 <asp:Label Text="Email para recuperar la cuenta" runat="server" />
                                <asp:TextBox runat="server" ID="txtEmailRecuperacion" Placeholder="Email para recuperacion de cuenta(opcional)" CssClass="form-control" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-6 form-group">
                            <asp:Button Text="Aplicar Cambios" runat="server" CssClass="btn btn-primary" ID="btn_Cambio" OnClick="btn_Cambio_Click"  />
                        </div>
                         <div class="col-md-6 form-group">
                            <asp:Button Text="Cancelar" runat="server" CssClass="btn btn-primary" ID="btn_Cancelar" OnClick="btn_Cancelar_Click"  />
                             <a href="javascript:history.back()" class="btn btn-primary">Cancelar</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
