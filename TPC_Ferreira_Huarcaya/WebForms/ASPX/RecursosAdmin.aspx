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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
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

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
    <a class="navbar-brand" href="#">
        <img src="https://localhost:44344/Imagenes/icono_ecommerce.jpg" width="30" height="30" class="d-inline-block align-top" alt="" style="background-color: transparent"/>
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

                <%if (!(Session["usersession"] != null))
                    {%>
                         <a href="InicioSesion.aspx" style="color: white; margin-right: 30px;"><i class="fas fa-user"></i> Log-In</a>
                <%} %>
                <a href="InicioSesion.aspx?LogOut=1" style="color: white; margin-right: 30px;"><i class="fas fa-sign-out-alt"></i> Log-Out</a>
                <a href="EditarDatosPersonales.aspx" style="color: white; margin-right: 30px;"><i class="fas fa-info-circle"></i> Editar info</a>
                <a href="RecursosAdmin.aspx" style="color: white;"><i class="fas fa-cogs"></i> Panel Admin</a>
                <%if (Session["usersession"] != null)
                    {

                        Modelo.Usuario usuario = (Modelo.Usuario)Session["usersession"];
                        %>
                        <label style="color:aliceblue; font-weight:bold; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"> Logeado como: <%= usuario.NombreUsuario %> </label>
                      <%if (usuario.Id_Acceso == 3)//verificar el tipo de acceso para poder ver la pagina.
                        {%>
                
                <%}
                } %>
            </div>
        </div>
    </div>
</nav>

    <form id="form1" runat="server">
        
        <div class="container-pag" id="pag1" style="background:url(https://www.xtrafondos.com/wallpapers/resized/imagen-borrosa-2400.jpg?s=large);background-size:cover;">
            <div class="padre">
                  <a href="#pag2" class="btn btn-info hijo">Ir al listado de Usuarios</a> 
            </div> 
            <div class="padre">
                 <a href="#pag3" class="btn btn-info hijo">Ir al listado de Pedidos de Paginas Prediseñadas</a> 
            </div>
             <div class="padre">
                 <a href="#pag4" class="btn btn-info hijo">Ir al listado de Pedidos de Paginas Personalizadas</a> 
            </div>
            <div class="padre">
                 <a href="#pag5" class="btn btn-info hijo">Ver listado de Paginas Prediseñadas deshabilitadas </a> 
            </div>
            <div class="padre">
                 <a href="#pag6" class="btn btn-info hijo">Actualizar Precio Base y Precio Por Pagina</a> 
            </div>
        </div>
       
        <div class="container-pag" id="pag2">
            <div class="table-responsive-md ">
                 <br />
                 <br />
                 <br />
                 <h1 style="text-align: center;">Lista de Usuarios Registrados</h1>
                <table class="table table-hover table-dark ">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nombre Usuario</th>
                            <th scope="col">Contrasenia</th>
                            <th scope="col">ID Nivel</th>
                            <th scope="col">Habilitado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%if (Usuarios != null)
                            { %>
                        <%foreach (var item in Usuarios)
                         {%>
                        <tr>
                            <td><%=item.ID %></td>
                            <td><%=item.NombreUsuario %></td>
                            <td><%=item.Contrasenia %></td>
                            <td><%=item.Id_Acceso %></td>
                            <%if (item.Habilitado) //para que no aparezca 1 o 0 o true o false es mejor un si o no
                                {%>
                                 <td>Si</td>
                            <%} %>
                            <%else
                                {%>
                                 <td>No</td>
                            <%} %>
                        </tr>
                        <%} %>

                        <%} %>
                       
                    </tbody>
                </table>
                <asp:Button Text="Actualizar Usuarios" runat="server" ID="btn_Usuarios" OnClick="btn_Usuarios_Click"/>
                  <div>
                     <a href="#pag1" class="btn btn-primary" role="button" style="box-shadow:5px 5px 8px #999;border-radius:40px;">Ir al Indice</a>
                  </div>
            </div>
        </div>

        <div class="container-pag" id="pag3">
              <div class="jumbotron">
                    <h2 style="text-align: center;">Lista de Pedidos de Paginas Prediseñadas </h2>
                    <h4 style="text-align: center;">Utilice el boton</h4>
                    <p style="text-align: center;"><button type="button" class="boton-shadow1 btn btn-outline-info" disabled></button> </p>
                    <h4 style="text-align: center;">para Actualizar la lista de Pedidos</h4>
                </div>
            <div class="container">
                <table class="table table-fluid" id="myTable">
                    <thead>
                        <tr>
                            <th>ID Pedido</th>
                            <th>ID Usuario</th>
                            <th>ID Pagina Web</th>
                            <th>Precio</th>
                            <th>Fecha de Pedido</th>
                            <th>Comentario</th>
                            <th>Estado</th>
                            <th>Vista Detallada</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%if (ListaPedidosPrediseniada != null)
                                {%>
                        <%foreach (var item in ListaPedidosPrediseniada)
                                {%>
                        <tr>
                            <td><%=item.Id %></td>
                            <td><%=item.Id_Cliente %></td>
                            <td><%=item.Id_WebPage %></td>
                            <td><%=item.Precio %></td>
                            <td><%=item.FechaPedido %></td>
                            <td><%=item.Comentarios %></td>
                            <%if (item.Estado)
                                {%>
                                 <td>En curso</td>
                            <%} %>
                            <%else
                                { %>
                                <td>Cancelado </td>
                            <%} %>
                            <td><a href="DetallePedidoPrediseniado.aspx?IdUsuario=<%=item.Id_Cliente %>">Ver Detalles</a></td>
                        </tr>
                        <%} %>
                        <%} %>
                    </tbody>
                </table>
                 <asp:Button Text="" runat="server" ID="btn_Actualizar" OnClick="btn_Actualizar_Click" CssClass="boton-shadow btn btn-outline-info"> </asp:Button>
            </div>
             <div>
                  <a href="#pag1" class="btn btn-primary" role="button" style="box-shadow:5px 5px 8px #999;border-radius:40px;">Ir al Indice</a>
             </div>
        </div>

          <div class="container-pag" id="pag4">
              <div class="jumbotron">
                    <h2 style="text-align: center;">Lista de Pedidos de Paginas Personalizadas </h2>
                    <h4 style="text-align: center;">Utilice el boton"</h4>
                    <p  style="text-align: center;"><button type="button" class="boton-shadow1 btn btn-outline-info" disabled></button> </p>
                    <h4 style="text-align: center;">para Actualizar la lista de Pedidos</h4>
                </div>
            <div class="container">
                <table class="table table-fluid" id="myTable1">
                    <thead>
                        <tr>
                            <th>Fecha</th>
                            <th>ID Pedido</th>
                            <th>ID Usuario</th>
                            <th>Estilo</th>
                            <th>Cant.Paginas</th>
                            <th>Cant.Funcionalidades</th>
                            <th>Vista Detallada</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%if (ListaVistaPedidos != null)
                          {%>
                        <%foreach (var item in ListaVistaPedidos)
                            { %>
                        <tr>
                            <td><%= item.Fecha %></td>
                            <td><%= item.IdPedido %></td>
                            <td><%= item.IdUsuario %></td>
                            <td><%= item.Estilo %></td>
                            <td><%= item.CantPaginas %></td>
                            <td><%= item.CantFuncs %></td>
                            <td><a href="DetallePedidoPersonalizado.aspx?IdPedido=<%=item.IdPedido %>">Ver Detalles</a></td>
                        </tr>
                        <%}
                            }%>
                    </tbody>
                </table>
                 <asp:Button Text="" runat="server" ID="btn_Actualizar_Personalizada" OnClick="btn_Actualizar_Personalizada_Click" CssClass="boton-shadow btn btn-outline-info"> </asp:Button> 
            </div>
               <div>
                  <a href="#pag1" class="btn btn-primary" role="button" style="box-shadow:5px 5px 8px #999;border-radius:40px;">Ir al Indice</a>
               </div>
        </div>

        <div class="container-pag" id="pag5">
            <section id="facilities">
                <hr />
                <div class="jumbotron">
                    <h2 style="text-align: center;">Paginas Prearmadas deshabilitadas: </h2>
                    <h4 style="text-align: center;">Utilice el boton <i class="fas fa-recycle"></i>para volver a habilitarlas ó el boton <i class="fas fa-tools"></i>para editar y habilitar.</h4>
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
             <div>
                 <a href="#pag1" class="btn btn-primary" role="button" style="box-shadow:5px 5px 8px #999;border-radius:40px;">Ir al Indice</a>
            </div>
        </div>

        <div class="container-pag jumbotron" id="pag6">
            <div>
            <br />
            <asp:Label Text="Precio Base de pagina web Personalizada" runat="server" /><br />
            <asp:TextBox runat="server" ID="txtBox_PrecioBase" />
            <asp:Button Text="Actualizar Precio Base" runat="server" id="btn_PrecioBase" OnClick="btn_PrecioBase_Click" CssClass="btn btn-dark"/>
            <br />
            <br />
            <asp:Label Text="Precio por pagina de web Personalizada" runat="server" /><br />
            <asp:TextBox runat="server" ID="txtBox_PrecioPorPagina" />
            <asp:Button Text="Actualizar Precio Por Pagina" runat="server" id="btn_PrecioPorPagina" OnClick="btn_PrecioPorPagina_Click" CssClass="btn btn-dark"/>
            </div>
        </div>

        <script>
            window.onload = function () {
                var pos = window.name || 10;
                window.scrollTo(10, pos);
            }
            window.onunload = function () {
                window.name = self.pageYOffset || (document.documentElement.scrollTop + document.body.scrollTop);
            }

            $(document).ready(function () {
                $('#myTable').DataTable();
            });
            $(document).ready(function () {
                $('#myTable1').DataTable();
            });
        </script>
    </form>


</body>
</html>
