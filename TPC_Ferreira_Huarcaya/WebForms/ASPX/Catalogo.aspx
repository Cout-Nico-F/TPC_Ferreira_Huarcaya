<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="WebForms.ASPX.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-md-offset-2">
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <div class="container d-flex">
                                     <asp:TextBox runat="server" CssClass="form-control" ID="txt_Buscar" placeholder=" Buscar..." MaxLength="50" OnTextChanged="txt_Buscar_TextChanged" />
                                     <!--<asp:Button Text="Buscar" runat="server" OnClick="btn_buscar_Click" ID="btn_buscar" CssClass="btn btn-info"/>-->
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
    
    <br />
    <br />
    <!--Por ahora el buscador queda inactivo hasta encontrar porque no funciona -->
      <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Hola bienvenido</h1>
            <p class="lead">Seguimos trabajando..</p>
        </div>
    </div>

    <!--Se que a Maxi no le gusta el uso de br(en un vivo le pregunte) pero no se me ocurre otra forma -->
    <br />
    <br />
    <section id="facilities">
        <!-- Response.Redirect("/ASPX/ConfirmarBajas/EstiloBaja.aspx?idEstilo=" + id); -->
        <div class="container">
            <%
                if (Lista.Count == 0)
                {%>
                    <h3 style="color:white; margin-left: 1vw; ">No hay articulos que coincidan con tu busqueda.</h3>
            <% }%>
            <div class="row">
                <%
                        foreach(Modelo.PaginaWeb item in Lista)
                        {%>
                <div class="col md-5 col-sm-4">
                    <div class="container">
                         <a href="#"><i class="fas fa-trash"></i></a> 
                        <a href="#"><i class="fas fa-plus"></i></a>
                    </div>
                    <div class="card text-center" style="margin-bottom: 40px;">
                        <img src=<%=item.Url_Imagen %> class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title"><%=item.Titulo %></h5>
                            <p class="card-text"><%=item.Descripcion %></p>
                            <a href="<%=item.Url_PaginaWeb %>" class="btn btn-info btn-lg btn-block"><i class="fas fa-search"></i>  Vista Previa</a>
                            <a href="CarritoCompra.aspx?idPagina=<%=item.ID %>" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-shopping-cart"></i>   Solicitar</a>
                        </div>
                     </div>
                 </div>
                        <%}%>
                </div>
            <div class="col md-5 col-sm-4">
                    <div class="card text-center" style="margin-bottom: 40px;">
                        <img src="../Imagenes/ImagenesPaginas/Blanco.jpg" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title">Template Vacio</h5>
                            <p class="card-text">Template en blanco para personalizar</p>
                            <a href="#" class="btn btn-info btn-lg btn-block"><i class="fas fa-search"></i>  Vista Previa</a>
                            <a href="Personalizar.aspx" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-plus-circle"></i>   Personalizar</a>
                        </div>
                     </div>
                 </div>
            </div>
         
        </section>

    <footer>
        <!--Bot Nilo bot-->
        <script samesite="None; Secure" src="https://static.landbot.io/landbot-widget/landbot-widget-1.0.0.js"></script>
        <script>
            var myLandbot = new LandbotLivechat({
                index: 'https://chats.landbot.io/v2/H-749446-IDIBFL9M7ZRC4OK9/index.html',
            });
        </script>
    </footer>
   

</asp:Content>
