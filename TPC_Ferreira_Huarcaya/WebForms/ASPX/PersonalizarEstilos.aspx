<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalizarEstilos.aspx.cs" Inherits="WebForms.ASPX.PersonalizarEstilos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!-- Bootstrap 4 CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
     <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"  />
    <!-- Estilos CSS -->
    
    <!-- Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet" />

    <title>Estilos</title>
</head>
<body>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
        <a class="navbar-brand" href="#">
             <img src="../Imagenes/icono_ecommerce.png" width="30" height="30" class="d-inline-block align-top" style=" background-color: rgba(255, 0, 0, 0.5);" /> <!-- No puedo hacer transparente el fonde de la imagen -->
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
            <h1>Estilos</h1>
            <p>Elija un estilo para su Web</p>
            <asp:DropDownList runat="server" ID="ddl_Estilos" OnSelectedIndexChanged="ddl_Estilos_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            <asp:Button Text="Seguir" runat="server" OnClick="Unnamed_Click" />
            <!--<div class="card" style="width: 18rem;">
                <img src="" class="card-img-top" alt="Iamgen no encontrada">
                <div class="card-body">
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div> -->
        </div>
        <asp:ScriptManager runat="server" ID="ScriptManager1" />
        <asp:UpdatePanel runat="server" ID="up_Panel" UpdateMode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Unamed_Click" EventName="Click" />
            </Triggers>
            <ContentTemplate>   
                 <div>
            <table class="egt" style="text-align:center;">
                <tr>
                    <th>Paginas</th>
                    <th>Estilos</th>
                </tr>
                <tr>
                <td>asdasd</td>
                </tr>
            </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
