<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="DetallesPedidoPersonalizado.aspx.cs" Inherits="WebForms.ASPX.DetallesPedidoPersonalizado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
