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
            min-width:100%;
        }
        #pag2{
            min-height:100%;
        }
    </style>
    <form id="form1" runat="server">
        <div class="container-pag" id="pag1">
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
                            <th>Estilo de la Pagina</th>
                            <th>Fecha de Pedido</th>
                            <th>Cantidad de Funciones</th>
                            <th>Cantidad de Paginas</th>
                        </tr>
                    </thead>
                    <tbody>
                         <%foreach (var item in PedidosPersonalizados)
                            {%>
                        <tr>
                            <td><%=item.IdPedido %></td>
                            <td><%=item.Estilo %></td>
                            <td><%=item.Fecha %></td>
                            <td><%=item.CantFuncs %></td>
                            <td><%=item.CantPaginas %></td>
                           
                        </tr>
                         <%} %>
                    </tbody>
                </table>
                </div>
            </div>
        <div class="container-pag" id="pag2">
              <div class="jumbotron">
                    <h2 style="text-align: center;">Lista de Pedidos de Paginas Prediseñadas </h2>
                    <h4 style="text-align: center;">Utilice el boton</h4>
                    <p style="text-align: center;"><button type="button" class="boton-shadow1 btn btn-outline-info" disabled></button> </p>
                    <h4 style="text-align: center;">para Actualizar la lista de Pedidos</h4>
                </div>
            <div class="container">
                <table class="table table-fluid">
                    <thead>
                        <tr>
                            <th>ID Pedido</th>
                            <th>ID Pagina Web PD</th>
                            <th>Fecha de Pedido</th>
                            <th>Precio</th>
                        </tr>
                    </thead>
                    <tbody>
                         <%foreach (var item in PedidoPrediseniado)
                            {%>
                        <tr>
                            <td><%=item.Id %></td>
                            <td><%= item.Id_WebPage %></td>
                            <td><%=item.FechaPedido %></td>
                            <td>$ <%=item.Precio %></td>
                        </tr>
                         <%} %>
                    </tbody>
                </table>
                </div>
            </div>
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
