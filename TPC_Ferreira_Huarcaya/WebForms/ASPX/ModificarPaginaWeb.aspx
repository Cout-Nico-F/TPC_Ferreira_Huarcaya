<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarPaginaWeb.aspx.cs" Inherits="WebForms.ASPX.ModificarPaginaWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <!-- Bootstrap 4 CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
     <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!-- Estilos CSS -->
  
    <!-- Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet" />

    <title>Modificar Pagina Web</title>
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
            <a class="nav-link" href="PersonalizarUsuario.aspx">Crea tu propia Pagina Web</a>
        </div>
        <div>
            <div class="boton-nav-user">
                <a href="InicioSesion.aspx" style="color:white; margin-right:30px;"><i class="fas fa-user"></i></a>
                <a href="EditarDatosPersonales.aspx" style="color:white; margin-right:30px;"><i class="fas fa-info-circle"></i></a>
                <!-- Carrito no lo vamos a usar por lo menos aca -->
                <!--<a href="CarritoCompra.aspx" style="color:white; margin-right:80px;"><i class="fas fa-shopping-cart"></i></a> -->
            </div>
        </div>
    </div>
    </nav>
    <form id="form1" runat="server">
        <br />
        <br />

        <br />
        <br />
        <div class="section">

            <div class="container">

                <div class="row">
                    <div class="col md-5 col-sm-4">
                        <div class="card text-center" style="margin-bottom: 40px;">
                            <img src="<%=PaginaSeleccionada.Url_Imagen %>" class="card-img-top" alt="No se encontro la imagen" />
                            <div class="card-body">
                                <h5 class="card-title"><%=PaginaSeleccionada.Titulo %></h5>
                                <p class="card-text"><%=PaginaSeleccionada.Descripcion %></p>
                                <a href="#" class="btn btn-info btn-lg btn-block"><i class="fas fa-search"></i>Vista Previa</a>
                                <a href="#" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-plus-circle"></i>Personalizar</a>
                            </div>
                        </div>
                    </div>
                <div class="col-md-8 col-md-offset-2">
                    <form id="contact" method="post" class="form" role="form" ">
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="txtTitulo" Placeholder="Titulo de la Pagina Web" CssClass="form-control"></asp:TextBox>
                                <asp:Label Text="" runat="server" ID="lblTitulo" />
                            </div>
                             <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="txtDescripcion" Placeholder="Descripcion de la Pagina Web" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                 <asp:Label Text="" runat="server" ID="lblDescripcion" />
                            </div>
                             <div class="col-md-6 form-group">
                                <asp:TextBox runat="server" ID="txtUrlPaginaWeb" Placeholder="Url al index de la Pagina Web" CssClass="form-control" ></asp:TextBox>
                            </div>
                            <div class="col-md-6 form-group">
                                <asp:TextBox runat="server" ID="txtUrlImagen" Placeholder="Url a la imagen de la Pagina Web" CssClass="form-control" ></asp:TextBox>
                            </div>
                            <div class="col-md-6 form-group">
                                <asp:TextBox runat="server" ID="txtPrecio" Placeholder="Ingrese el precio" CssClass="form-control" TextMode="Number" ></asp:TextBox>
                                <asp:Label Text="" runat="server" ID="lblPrecio" />
                            </div>
                        </div>
                        <br />
                        <div class="col-md-6 form-group">
                            <asp:Button Text="Aplicar Cambios" runat="server" CssClass="btn btn-primary" ID="btn_Cambios" OnClick="btn_Cambios_Click" />
                            <a href="javascript:history.back()" class="btn btn-primary">Cancelar</a>
                        </div>
                      </form>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
