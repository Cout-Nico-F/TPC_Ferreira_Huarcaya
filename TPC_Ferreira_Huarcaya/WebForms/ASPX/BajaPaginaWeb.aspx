<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaPaginaWeb.aspx.cs" Inherits="WebForms.ASPX.Baja_PaginaWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!--Hoja de estilos CSS -->
    <link href="../CSS/Estilos_BajaPagina.css" rel="stylesheet" />
    <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" >
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" >
    <!--Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Raleway:wght@500&display=swap" rel="stylesheet">
    
    <title>Baja de Pagina Web</title>

</head>
<body>
  
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <div class="jumbotron">
                <h1>Confirmar Baja de la Pagina Web</h1>
                <h3>Esta accion deshabilitará esta pagina web y ya no se listará como una opcion disponible</h3>
            </div>
           
            <br />
            <br />
            <br />

            <section class="facilities">
                <div class="grid-container">
                    <div class="item1">
                        <div class="card text-center" style="margin-bottom: 40px;">
                            <img src="<%=PaginaSeleccionada.Url_Imagen%>" class="card-img-top" alt="No se encontro la imagen" />
                            <div class="card-body">
                                <h5 class="card-title"><%=PaginaSeleccionada.Titulo %></h5>
                                <p class="card-text"><%=PaginaSeleccionada.Descripcion %></p>
                                 <asp:Button Text="Confirmar" runat="server" CssClass="btn btn-danger" ID="btn_Confirmar" Onclick="btn_Confirmar_Click"/>
                                 <a href="Catalogo.aspx" class="btn btn-info">Cancelar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
               
        </div>
        <br />
        <br />
        <br />
         
          <br />
          <br />
         
       
    </form>
</body>
</html>
