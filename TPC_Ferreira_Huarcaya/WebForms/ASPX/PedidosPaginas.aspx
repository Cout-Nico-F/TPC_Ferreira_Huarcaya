<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PedidosPaginas.aspx.cs" Inherits="WebForms.ASPX.PedidosPaginas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!--Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@400;700&display=swap" rel="stylesheet" />
    <!-- JQuery CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Datatable -->
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
    <script src="http://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

    <title>Pedidos</title>

</head>
<body>
    <style>

        #pag1{
            min-height:100vh;
        }
        #pag2{
            min-height:100vh;
        }
        .jumbotron h2{
            font-family: 'Libre Baskerville', serif;
            font-size:50px;
        }
        .table th{
             font-family: 'Libre Baskerville', serif;
        }
        #myTable td{
            text-align:center;
        }
        .container-pag {
                background-color:antiquewhite;
        }
        .jumbotron{
            background:url(https://cdn.pixabay.com/photo/2018/07/17/14/43/banner-3544296_960_720.jpg);
            background-size:cover;
        }

    </style>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
    <a class="navbar-brand" href="#">
        <img src="https://localhost:44344/Imagenes/icono_ecommerce.jpg" width="30" height="30" class="d-inline-block align-top" alt="" style="background-color: transparent">
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
                <%if (Session["usersession"] != null)
                    {

                        Modelo.Usuario usuario = (Modelo.Usuario)Session["usersession"];
                        %>
                          <a href="PedidosPaginas.aspx?idUsuario=<%= usuario.ID %>" style="color:white ;margin-right:30px;"><i class="fas fa-shopping-cart"></i></a>   
                        <label style="color:aliceblue; font-weight:bold; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"> Logeado como: <%= usuario.NombreUsuario %> </label>
                        
                <%if (usuario.Id_Acceso == 3)//verificar el tipo de acceso para poder ver la pagina.
                        {%>
                        <a href="RecursosAdmin.aspx" style="color: white;"><i class="fas fa-cogs"></i> Panel Admin</a>
                         <%}
                       
                } %>
                  
            </div>
        </div>
    </div>
</nav>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" />    
        <asp:UpdatePanel runat="server">
            <ContentTemplate>   

                
        <div class="container-pag" id="pag1">
              <div class="jumbotron">
                    <h2 style="text-align: center;">Lista de Pedidos de Paginas Prediseñadas </h2>
                </div>
            <div class="container">
                <table class="table table-fluid">
                    <thead>
                        <tr>
                            <th>ID Pedido</th>
                            <th>ID Pagina Web PD</th>
                            <th>Fecha de Pedido</th>
                            <th>Precio</th>
                            <th>EliminarPedido</th>
                        </tr>
                    </thead>
                    <tbody>
                         <%foreach (var item in PedidoPrediseniado)
                            {%>
                        <%if (item.Estado != false)
                            {%>
                        <tr>
                            <td><%=item.Id %></td>
                            <td><%= item.Id_WebPage %></td>
                            <td><%=item.FechaPedido %></td>
                            <td>$ <%=item.Precio %></td>
                            <td><a href="PedidosPaginas.aspx?idPedidoPred=<%=item.Id %>"><i class="fas fa-trash"></i></a></td>
                        </tr>
                            <%} %>
                         <%} %>
                    </tbody>
                </table>
                <a href="#pag2" class="btn btn-info">Ver lista de pedidos de paginas Personalizadas</a>
                </div>
            </div>
<div class="container-pag" id="pag2">
              <div class="jumbotron">
                    <h2 style="text-align: center;">Lista de Pedidos de Paginas Personalizadas </h2>
                </div>
            <div class="container">
                <table class="table table-fluid" id="myTable">
                    <thead>
                        <tr>
                            <th>ID Pedido</th>
                            <th>Estilo de la Pagina</th>
                            <th>Fecha de Pedido</th>
                            <th>Cantidad de Funciones</th>
                            <th>Cantidad de Paginas</th>
                            <th>Eliminar Pedido</th>
                        </tr>
                    </thead>
                    <tbody>
                         <%foreach (var item in PedidosPersonalizados)
                            {%>
                        <%if (item.Estado != false)
                            {%>
                        <tr>
                            <td><%=item.IdPedido %></td>
                            <td><%=item.Estilo %></td>
                            <td><%=item.Fecha %></td>
                            <td><%=item.CantFuncs %></td>
                            <td><%=item.CantPaginas %></td>
                           <td><a href="PedidosPaginas.aspx?idPedidoPers=<%=item.IdPedido %>"><i class="fas fa-trash"></i></a></td>
                        </tr>
                        <%} %>
                         <%} %>
                    </tbody>
                </table>
                <a href="#pag1" class="btn btn-info">Ver lista de pedidos de paginas Prediseñadas</a>
                </div>
            </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        
    </form>

      <script>
          /*    Script para que al recargar la pagina se guarda el punto de referencia y no te lleva a arriba del todo      */
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
     </script>

</body>
</html>
