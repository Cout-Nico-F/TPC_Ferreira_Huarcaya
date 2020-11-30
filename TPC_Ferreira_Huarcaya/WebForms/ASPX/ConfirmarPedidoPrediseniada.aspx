<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmarPedidoPrediseniada.aspx.cs" Inherits="WebForms.ASPX.ConfirmarPedidoPrediseniada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
    <!--Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Raleway:wght@500&display=swap" rel="stylesheet">

    <title>Confirmar Pedido Prediseñada</title>

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
    <a class="navbar-brand" href="#">
        <img src="https://localhost:44344/Imagenes/icono_ecommerce.jpg" width="30" height="30" class="d-inline-block align-top" alt="" style="background-color: transparent">
        <!-- No puedo hacer transparente el fonde de la imagen -->
        FerreAlo</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- el ID anterior era : navbarNavAltMarkup -->
        <div class="navbar-nav mr-auto ml-auto text-center">
            <a class="nav-link" href="Home.aspx">Home</a>
            <a class="nav-link" href="Catalogo.aspx">Catalogo</a>
            <a class="nav-link" href="Info.aspx">Informacion</a>
            <a class="nav-link" href="PersonalizarUsuario.aspx">Crea tu propia Pagina Web</a>
        </div>
        <div>
            <div class="boton-nav-user">

                <%if (!(Session["usersession"] != null))
                    {%>
                         <a href="InicioSesion.aspx" style="color: white; margin-right: 30px;"><i class="fas fa-user"></i> Log-In</a>
                <%} %>
                <a href="InicioSesion.aspx?LogOut=1" style="color: white; margin-right: 30px;"><i class="fas fa-sign-out-alt"></i> Log-Out</a>
                <a href="EditarDatosPersonales.aspx" style="color: white; margin-right: 30px;"><i class="fas fa-info-circle"></i> Editar info</a>
                <a href="RecursosAdmin.aspx" style="color: white;"><i class="fas fa-cogs"></i> Panel Admin</a>
                <%if (Session["usersession"] != null)
                    {

                        Modelo.Usuario usuario = (Modelo.Usuario)Session["usersession"];
                        %>
                        <label style="color:aliceblue; font-weight:bold; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"> Logeado como: <%= usuario.NombreUsuario %> </label>
                      <%if (usuario.Id_Acceso == 3)//verificar el tipo de acceso para poder ver la pagina.
                        {%>
                
                <%}
                } %>
            </div>
        </div>
    </div>
</nav>
    <form id="form1" runat="server">

        <div class="jumbotron">
            <h1 style="text-align: center">Confirmación del pedido de pagina web</h1>
        </div>
        <div class="container">
            <img src="<%=Item.Url_Imagen %>" alt="No se encontro la imagen" style="width: 1100px; height: 600px;" />
            <br />
            <br />
            <p style="text-align:center;font-weight:bold"><%=Item.Titulo %></p>
            <p style="text-align:center;font-weight:bold"><%=Item.Descripcion %></p>
            <br />
            <br />
            <asp:Button Text="Solicitar Pagina" runat="server" id="btn_Solicitar" OnClick="btn_Solicitar_Click" CssClass="btn btn-secondary btn-lg btn-block"/>
        </div>
    </form>
</body>
</html>
