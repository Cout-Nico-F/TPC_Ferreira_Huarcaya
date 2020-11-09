<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="WebForms.ASPX.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Hola bienvenido</h1>
            <p class="lead">Estamos trabajando.... <i class="fas fa-exclamation-triangle"></i></p>
        </div>
    </div>
    <br />
    <br />
    <!-- Por ahora el buscador queda inactivo hasta encontrar porque no funciona
    <div>
        <asp:TextBox runat="server" class="form-text" ID="txt_buscar" placeholder="Search.." />  
        <asp:Button Text="Buscar" runat="server" CssClass="btn btn-primary btn-lg active" OnClick="btn_buscar_Click" ID="btn_buscar" />
    </div> -->
    <!--Se que a Maxi no le gusta el uso de br(en un vivo le pregunte) pero no se me ocurre otra forma -->
    <br />
    <br />
    <section id="facilities">
        <div class="container">
            <div class="row">
                <%
                        foreach(Modelo.PaginaWeb item in Lista)
                        {%>
                <div class="col md-5 col-sm-4">
                    <div class="card text-center" style="margin-bottom: 40px;">
                        <img src=<%=item.Url_Imagen %> class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title"><%=item.Titulo %></h5>
                            <p class="card-text"><%=item.Descripcion %></p>
                            <a href="<%=item.Url_PaginaWeb %>" class="btn btn-info btn-lg btn-block"><i class="fas fa-search"></i>  Vista Previa</a>
                            <a href="CarritoCompra.aspx?idPagina=<%=item.ID %>" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-shopping-cart"></i>   Solicitar</a>
                            <a href="Personalizar.aspx" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-plus-circle"></i>   Personalizar</a>
                        </div>
                    </div>
                </div>
                        <%}%>
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
