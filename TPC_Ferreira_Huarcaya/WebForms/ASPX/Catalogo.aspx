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
                            <asp:Label Text="Ingrese un titulo y presione enter para buscar" runat="server" style="margin-left: 3%"/>
                            <div class="container d-flex">
                                <asp:TextBox runat="server" CssClass="form-control" ID="txt_Buscar" placeholder=" Buscar..." MaxLength="50" OnTextChanged="txt_Buscar_TextChanged" />
                                <a href="Catalogo.aspx" class="btn alert-info">Todas</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Catalogo de paginas prediseñadas</h1>
            <p class="lead">Elija la que mejor se acomode a sus necesidades o arme una pagina personalizada</p>
        </div>
    </div>

    <br />
    <br />

    <section id="facilities">
        <div class="container">
            <%
                if (Lista.Count == 0)
                {%>
            <h3 style="color: white; margin-left: 1vw;">No hay articulos que coincidan con tu busqueda.</h3>
            <% }%>
            <div class="row">
                <%
                    foreach (Modelo.PaginaWeb item in Lista)
                    {
                        if (item.Habilitado)
                        {%>
                <div class="col md-5 col-sm-4">
                    <%if (Session["usersession"] != null)
                        {
                            Usuario = (Modelo.Usuario)Session["usersession"];

                            if (Usuario.Id_Acceso == 3)//verificar el tipo de acceso para poder ver la pagina.
                            {%>
               
                    <div class="container">

                        <a href="BajaPaginaWeb.aspx?idPaginaWeb=<%=item.ID %>"><i class="fas fa-trash"></i></a>
                        <a href="AgregarPaginaWeb.aspx"><i class="fas fa-plus"></i></a>
                        <a href="ModificarPaginaWeb.aspx?idPaginaWeb=<%=item.ID %>"><i class="fas fa-tools"></i></a>


                    </div>
                    <%}
                    } %>
                    <div class="card text-center" style="margin-bottom: 40px;">
                        <img src="<%=item.Url_Imagen %>" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title"><%=item.Titulo %></h5>
                            <p class="card-text"><%=item.Descripcion %></p>
                            <a href="<%=item.Url_PaginaWeb %>" target="_blank" class="btn btn-info btn-lg btn-block"><i class="fas fa-search"></i>Vista Previa</a>
                            <a href="RellenarDatosPagWeb.aspx?id=<%=item.ID %>" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-shopping-cart"></i>Rellenar Datos</a>
                        </div>
                    </div>
                </div>
                <%}
                    }%>
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
