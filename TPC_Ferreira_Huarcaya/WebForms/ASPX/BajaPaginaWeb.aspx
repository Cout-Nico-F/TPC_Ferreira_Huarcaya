<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaPaginaWeb.aspx.cs" Inherits="WebForms.ASPX.Baja_PaginaWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!--Hoja de estilos CSS -->
    
    <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" >
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" >
    <!--Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Raleway:wght@500&display=swap" rel="stylesheet">
    
    <title>Eliminar Pagina Web</title>
</head>
<body>
    <style>

        #facilities .card:hover {
            transform: translateX(-10px);
            box-shadow: 0 12px 16px rgba(0,0,0,0.2);
        }

        #facilitie .card:hover {
            transform: translateX(-10px);
            box-shadow: 0 12px 16px rgba(0,0,0,0.2);
        }

    </style>
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <h1 class="jumbotron">Confirmar Baja de la Pagina Web</h1>
            <h3>Esta accion eliminara la pagina web de la base de datos</h3>
            <br />
            <br />
            <br />
            <section class="facilities">
                 <div class="col md-5 col-sm-4">
                    <div class="card text-center" style="margin-bottom: 40px;">
                        <img src="<%=PaginaSeleccionada.Url_Imagen%>" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title"><%=PaginaSeleccionada.Titulo %></h5>
                            <p class="card-text"><%=PaginaSeleccionada.Descripcion %></p>
                        </div>
                    </div>
                </div>
            </section>
               
        </div>
        <br />
        <br />
        <br />
          <asp:Button Text="Confirmar" runat="server" CssClass="btn btn-danger" ID="btn_Confirmar" Onclick="btn_Confirmar_Click"/>
          <br />
          <br />
          <a href="Catalogo.aspx" class="btn-primary btn-info">Cancelar</a>
       
    </form>
</body>
</html>
