<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="DetallePedidoPrediseniado.aspx.cs" Inherits="WebForms.ASPX.DetallePedidoPrediseniado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="jumbotron">
            <h1>Detalles del pedido</h1>
        </div>
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
