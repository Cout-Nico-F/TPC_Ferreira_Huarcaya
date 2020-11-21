<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecursosAdmin.aspx.cs" Inherits="WebForms.ASPX.RecursosAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <!-- Estilos CSS -->
    <link href="../CSS/Estilos_RecursosAdmin.css" rel="stylesheet" />
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
    <!--Google Fonts -->

    <!--JS Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
    <title>Recursos Admin</title>
    <!-- JQuery CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Datatable -->
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
    <script src="http://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

</head>
<body>

    <style>
        
    </style>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
        <a class="navbar-brand" href="#">
            <img src="../Imagenes/icono_ecommerce.jpg" width="30" height="30" class="d-inline-block align-top" alt="icono_E-commerce" style="background-color: transparent">
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

                    <a href="InicioSesion.aspx" style="color: white; margin-right: 30px;"><i class="fas fa-user"></i></a>
                    <a href="EditarDatosPersonales.aspx" style="color: white; margin-right: 30px;"><i class="fas fa-info-circle"></i></a>
                    <a href="RecursosAdmin.aspx" style="color: white;"><i class="fas fa-question"></i></a>
                </div>
            </div>
        </div>
    </nav>

    <form id="form1" runat="server">
        <br />
        <br />
        <h1 style="text-align: center;">Vista Lista de Pedidos</h1>
        <div class="table-responsive-md">
            <table class="table table-hover table-dark ">
                <thead>
                    <tr>
                        <th scope="col" class="tam-lista">Fecha Pedido</th>
                        <th scope="col" class="tam-lista">ID  Pedido</th>
                        <th scope="col" class="tam-lista">ID Usuario</th>
                        <th scope="col">Descrip. del Estilo</th>
                        <th scope="col">Cant. de Paginas</th>
                        <th scope="col">Cant. de Func.</th>
                        <th scope="col" class="tam_txt"> <asp:TextBox runat="server" CssClass="txt_table" /><asp:Button Text="Consultar" runat="server" CssClass="btn btn-outline-primary" ID="btn_Consulta" OnClick="btn_Consulta_Click" /></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="2">Larry the Bird</td>
                        <td>@twitter</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>


        <div class="container">
            <div class="container d-flex">
                <h1>Lista de Pedidos </h1>
                <br />

            </div>
            <table class="table table-fluid" id="myTable">
                <thead>
                    <tr>
                        <th>Fecha Pedido</th>
                        <th>ID Pedido</th>
                        <th>ID Usuario</th>
                        <th>Descripcion Estilo</th>
                        <th>Cantidad Paginas</th>
                        <th>Cantidad Funcionalidades</th>
                        <th>
                            <asp:TextBox runat="server" />
                        </th>
                        <!--Si pongo un boton se hace aun mas chico tenemos que usar el txtchanged -->
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>El Pepe</td>
                        <td>askjdas</td>
                    </tr>
                    <tr>
                        <td>Ete Seech</td>
                        <td>asdasd</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <section id="facilities">
            <hr />
            <div class="jumbotron">
                <h2 style="text-align: center;">Paginas Prearmadas deshabilitadas: </h2>
                <h4 style="text-align: center;">Utilice el boton <i class="fas fa-recycle"></i> para volver a habilitarlas ó el boton <i class="fas fa-tools"></i> para editar y habilitar.</h4>
            </div>

            <div class="container">
                <div class="row">
                    <%
                        foreach (Modelo.PaginaWeb item in ListaPaginasWeb)
                        {
                            if (!(item.Habilitado))
                            {%>
                    <div class="col md-5 col-sm-4">

                        <div class="container">

                            <a href="ModificarPaginaWeb.aspx?idPaginaWeb=<%=item.ID %>"><i class="fas fa-tools"></i></a>
                            <a href="RecursosAdmin.aspx?idPaginaWeb=<%=item.ID %>"><i class="fas fa-recycle"></i></a>

                        </div>
                        <div class="card text-center" style="margin-bottom: 40px;">
                            <img src="<%=item.Url_Imagen %>" class="card-img-top" alt="No se encontro la imagen" />
                            <div class="card-body">
                                <h5 class="card-title"><%=item.Titulo %></h5>
                                <p class="card-text"><%=item.Descripcion %></p>
                                <a href="<%=item.Url_PaginaWeb %>" class="btn btn-info btn-lg btn-block"><i class="fas fa-search"></i>Vista Previa</a>
                                <a href="#>" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-shopping-cart"></i>Solicitar</a>
                            </div>
                        </div>
                    </div>
                    <%}
                        }%>
                </div>
            </div>
        </section>

        <script>
            $(document).ready(function () {
                $('#myTable').DataTable();
            });
        </script>
    </form>


</body>
</html>
