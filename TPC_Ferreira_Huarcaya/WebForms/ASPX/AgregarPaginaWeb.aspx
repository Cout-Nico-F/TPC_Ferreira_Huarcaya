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
                      <%if (PaginaWebVistaPrevia != null)
                            { %>
                      <div class="col md-5 col-sm-4">
                        <div class="card text-center" style="margin-bottom: 40px;">
                            <img src="<%=PaginaWebVistaPrevia.Url_Imagen %>" class="card-img-top" alt="No se encontro la imagen" />
                            <div class="card-body">
                                <h5 class="card-title"><%=PaginaWebVistaPrevia.Titulo %></h5>
                                <p class="card-text"><%=PaginaWebVistaPrevia.Descripcion %></p>
                                <a href="#" class="btn btn-info btn-lg btn-block"><i class="fas fa-search"></i>Vista Previa</a>
                                <a href="#" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-plus-circle"></i>Personalizar</a>
                            </div>
                        </div>
                    </div>

                        <%} %>
                <div class="col-md-8 col-md-offset-2">
                    <form id="contact" method="post" class="form" role="form" ">
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <asp:Label Text="Ingrese un Titulo" runat="server" />
                                <asp:TextBox runat="server" ID="txtTitulo" CssClass="form-control"></asp:TextBox>
                            </div>
                             <div class="col-md-12 form-group">
                                <asp:Label Text="Ingrese una descripcion" runat="server" />
                                <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control" ></asp:TextBox>
                            </div>
                             <div class="col-md-6 form-group">
                                   <asp:Label Text="Ingrese la url del index de la pagina" runat="server" />
                                   <asp:TextBox runat="server" ID="txtUrlPagina" CssClass="form-control" ></asp:TextBox>
                            </div>
                             <div class="col md-6 form-group">
                                 <asp:Label Text="Seleccionar imagen a subir" runat="server"/>
                                <input type="file" class="form-control-file" id="fileImagen" runat="server" />
                            </div> 
                             <div class="col-md-12 form-group">
                                 <asp:Label Text="Ingrese el precio de la Pagina Web" runat="server" />
                                <asp:TextBox runat="server" ID="txtPrecio" CssClass="form-control" TextMode="Number" ></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-12 form-group">
                             <asp:Button Text="Agregar Pagina" runat="server" CssClass="btn btn-info" ID="txt_Cambios" Onclick="btn_Cambios_Click" />
                              <a href="Catalogo.aspx" class="btn btn-danger">Cancelar</a>
                             <asp:Button Text="Vista Previa" runat="server" CssClass="btn btn-info" ID="txtPrevia" OnClick="txtPrevia_Click" OnclientClick="OpenModal()"/>
                        </div>
                        
                      </form>
                </div>
            </div>
        </div>
    </div>
    </form>
    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Informacion</h4>
                </div>
                <div class="modal-body">
                    <div>
                        <asp:Label  runat="server"  ID="lblModal"/>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
    
    <script type="text/javascript">

        function openModal() {
            $('#myModal').modal('show');
        }

    </script>
</body>
</html>
