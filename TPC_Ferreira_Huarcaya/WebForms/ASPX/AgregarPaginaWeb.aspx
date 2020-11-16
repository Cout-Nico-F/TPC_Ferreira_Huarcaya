<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarPaginaWeb.aspx.cs" Inherits="WebForms.ASPX.Agregar_PaginaWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!--Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Raleway:wght@500&display=swap" rel="stylesheet" />
    
    <title>Agregar Pagina Web</title>

</head>
<body>
    
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
       <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="section-title">Agrega una Pagina Web</h2>
                    <p class="section-description">__________  __________   ____________  ________   _____________   __________   ____________</p>
                    <br />
                    <br />
                </div>
                <div class="col-md-12 col-md-offset-2">
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <asp:Label Text="Ingrese un Titulo" runat="server" />
                                <asp:TextBox runat="server" ID="txtTitulo" CssClass="form-control"></asp:TextBox>
                            </div>
                             <div class="col-md-12 form-group">
                                 <asp:Label Text="Ingrese una descripcion" runat="server" />
                                <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control" ></asp:TextBox>
                            </div>
                             <div class="col-md-12 form-group">
                                 <asp:Label Text="Ingrese la url del index de la pagina" runat="server" />
                                <asp:TextBox runat="server" ID="txtUrlPagina" CssClass="form-control" ></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label Text="Ingrese la url de la imagen" runat="server" />
                                <asp:TextBox runat="server" ID="txtUrlImagen" cssClass="form-control" />  
                                <!-- Esto para despues
                                <label for="fileImagen">Ingrese una imagen para para la pagina web</label>
                                <input type="file" class="form-control" id="fileImagen" runat="server" /> -->
                            </div>
                             <div class="col-md-12 form-group">
                                 <asp:Label Text="Ingrese el precio de la Pagina Web" runat="server" />
                                <asp:TextBox runat="server" ID="txtPrecio" CssClass="form-control" TextMode="Number" ></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-6 form-group">
                            <asp:Button Text="Aplicar Cambios" runat="server" CssClass="btn btn-info" ID="btn_Cambios" Onclick="btn_Cambios_Click" />
                            <a href="Catalogo.aspx" class="btn btn-danger">Cancelar</a>
                        </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
