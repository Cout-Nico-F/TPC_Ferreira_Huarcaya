<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RestaurarPaginaWeb.aspx.cs" Inherits="WebForms.ASPX.RestaurarPaginaWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            <% %>
            <section c="facilities">
                <div class="container">
                    <div class="row">
                        <div class="col md-5 col-sm-4">
                        <div class="card text-center" style="margin-bottom: 40px;">
                            <img src="<%=PaginaSeleccionada.Url_Imagen%>" class="card-img-top" alt="No se encontro la imagen" />
                            <div class="card-body">
                                <h5 class="card-title"><%=PaginaSeleccionada.Titulo %></h5>
                                <p class="card-text"><%=PaginaSeleccionada.Descripcion %></p>
                                <asp:Button Text="Confirmar" runat="server" CssClass="btn btn-danger" ID="Button1" OnClick="btn_Confirmar_Click" />
                                <a href="Catalogo.aspx" class="btn btn-info">Cancelar</a>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </section>
            <div>
                <asp:Button Text="Confirmar" runat="server" ID="btn_Confirmar" OnClick="btn_Confirmar_Click" />
                <a href="RecursosAdmin.aspx">Cancelar</a>
            </div>
    </form>
</body>
</html>
 <section id="facilities">
            <div class="container">
                <div class="row">
                    <%
                        foreach (Modelo.PaginaWeb item in ListaPaginasWeb)
                        {
                            if (!(item.Habilitado))
                            {%>
                    <div class="col md-5 col-sm-4">

                        <div class="container">

                            <a href="BajaPaginaWeb.aspx?idPaginaWeb=<%=item.ID %>"><i class="fas fa-trash"></i></a>
                            <a href="AgregarPaginaWeb.aspx"><i class="fas fa-plus"></i></a>
                            <a href="ModificarPaginaWeb.aspx?idPaginaWeb=<%=item.ID %>"><i class="fas fa-tools"></i></a>
                            <a href="RestaurarPaginaWeb.aspx?idPaginaWeb=<%=item.ID %>"><i class="fas fa-recycle"></i></a>


                        </div>
                        <div class="card text-center" style="margin-bottom: 40px;">
                            <img src="<%=item.Url_Imagen %>" class="card-img-top" alt="No se encontro la imagen" />
                            <div class="card-body">
                                <h5 class="card-title"><%=item.Titulo %></h5>
                                <p class="card-text"><%=item.Descripcion %></p>
                                <a href="<%=item.Url_PaginaWeb %>" class="btn btn-info btn-lg btn-block"><i class="fas fa-search"></i>Vista Previa</a>
                                <a href="CarritoCompra.aspx?idPagina=<%=item.ID %>" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-shopping-cart"></i>Solicitar</a>
                            </div>
                        </div>
                    </div>
                    <%}
                        }%>
                </div>
               </div>
        </section>
