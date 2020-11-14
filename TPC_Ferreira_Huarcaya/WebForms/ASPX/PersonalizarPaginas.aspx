<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalizarPaginas.aspx.cs" Inherits="WebForms.ASPX.PersonalizarPaginas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!-- Bootstrap 4 CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
     <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    <!-- Estilos CSS -->
  
    <!-- Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet" />

    <title>Paginas</title>

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
    <form id="form1" runat="server">
        <div style="text-align:center">
            <h1>Paginas</h1>
            <p>Elija la cantidad de paginas que conformaran su Web</p>
            <asp:DropDownList runat="server" ID="ddl_Paginas" AutoPostBack="true"></asp:DropDownList>
        </div>
         <div style="text-align:center">
            <h1>Estilo</h1>
            <p>Elija el estilo que quiera que tenga su web</p>
            <asp:DropDownList runat="server" ID="ddl_Estilos" AutoPostBack="true"></asp:DropDownList>
        </div>
        <div style="text-align:center">
            <h1>Funcionalidades</h1>
            <p>Elija un o mas funcionalidades para su Web</p>
            <asp:DropDownList runat="server" ID="ddl_Funcionalidades" AutoPostBack="true"></asp:DropDownList>
        </div>
       
    </form>
</body>
</html>
<!-- Tablas que borre de la base de datos
    relacion colores
    colores x relacioncolores
    colores
    categorias
    disposicion elementos -->
