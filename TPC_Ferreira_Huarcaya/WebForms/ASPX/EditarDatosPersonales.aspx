<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarDatosPersonales.aspx.cs" Inherits="WebForms.ASPX.EditarDatosPersonales" %>

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
             <img src="../Imagenes/icono_ecommerce.jpg" width="30" height="30" class="d-inline-block align-top" alt="icono_E-commerce" style="background-color:transparent"> <!-- No puedo hacer transparente el fonde de la imagen -->
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
                <!-- Carrito no lo vamos a usar por lo menos aca -->
                <!--<a href="CarritoCompra.aspx" style="color:white; margin-right:80px;"><i class="fas fa-shopping-cart"></i></a> -->
            </div>
        </div>
    </div>
    </nav>

    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" id="txt_NombreApellido"/>
            <asp:TextBox runat="server" id="txtTelefono_Movil"/>
            <asp:TextBox runat="server" id="txt_TelefonoFijo"/> 
            <asp:TextBox runat="server" id="txt_Email"/> 
            <asp:TextBox runat="server" id="txt_FechaNac"/> 
            <asp:TextBox runat="server" id="txt_EmailRecuperacion"/> 
            <asp:Button Text="Aplicar Cambios" runat="server" cssClass="btn btn-dark" OnClick="Unnamed_Click"/>
        </div>
    </form>
</body>
</html>
