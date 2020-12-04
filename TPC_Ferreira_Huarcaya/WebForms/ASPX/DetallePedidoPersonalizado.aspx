<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="DetallePedidoPersonalizado.aspx.cs" Inherits="WebForms.ASPX.DetallePedidoPersonalizado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <br />
      <div class="jumbotron">
        <h1>Detalles del pedido</h1>
    </div>
    <table class="table table-fluid" id="DetallePedido">
        <thead>
            <tr>
                <th>ID Pedido</th>
                <th>ID Cliente</th>
                <th>ID Estilo</th>
                <th>Precio Total</th>
                <th>Comentarios</th>
                <th>Fecha</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= PedidoSeleccionado.Id %></td>
                <td><%= PedidoSeleccionado.Id_Cliente %></td>
                <td><%= PedidoSeleccionado.ID_Estilo %></td>
                <td><%= PedidoSeleccionado.Precio %></td>
                <td><%= PedidoSeleccionado.Comentarios %></td>
                <td><%= PedidoSeleccionado.Fecha %></td>
            </tr>
        </tbody>
    </table>
    <br />
    <hr />
    <br />
    <h2>Lista de funcionalidades: </h2>
    <table class="table table-fluid" id="FuncionalidadesPedido">
                    <thead>
                        <tr>
                            <th>ID Funcionalidad</th>
                            <th>Descripcion</th>
                            <th>Costo</th>
                            <th>Habilitado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%foreach (var item in Funcionalidades)
                          {%>
                        <tr>
                            <td><%= item.Id %></td>
                            <td><%= item.Descripcion %></td>
                            <td><%= item.Costo %></td>
                            <td><%= item.Habilitado %></td>
                        </tr>
                        <%} %>
                    </tbody>
                </table>
    <br />
    <hr />
    <br />
    <h2>Lista de Paginas</h2>
    <table class="table table-fluid" id="PaginasPedido">
                    <thead>
                        <tr>
                            <th>ID Pagina</th>
                            <th>Descripcion</th>
                            <th>Habilitado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%foreach (var item in Paginas)
                          {%>
                        <tr>
                            <td><%= item.ID %></td>
                            <td><%= item.Descripcion %></td>
                            <td><%= item.Habilitado %></td>
                        </tr>
                        <%} %>
                    </tbody>
                </table>
    <br />
    <br />
    <br />
     <h2>Datos Contacto Usuario</h2>
    <table class="table table-fluid" id="DatosUsuario">
                    <thead>
                        <tr>
                            <th>Nombre y Apellido</th>
                            <th>Telefono Fijo</th>
                            <th>Telefono Movil</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%= DatosUsuario.NombreApellido %></td>
                            <td><%= DatosUsuario.TelefonoFijo%></td>
                            <td><%= DatosUsuario.TelefonoMovil %></td>
                            <td><%= DatosUsuario.Email %></td>
                        </tr>
                    </tbody>
                </table>
    
    <br />
    <br />
</asp:Content>
