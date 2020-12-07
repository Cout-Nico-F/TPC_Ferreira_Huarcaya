<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="PedidoExitoso.aspx.cs" Inherits="WebForms.ASPX.PedidoExitoso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h1>Exito! Tu pedido fue enviado a nuestro equipo!</h1>
        <h4>Te enviamos un email con los datos detallados </h4>
        <h5>Muchas gracias por elegirnos, estas un paso mas cerca de tener tu pagina web y ampliar tus horizontes.</h5>

        <%if (IDPedido == 1)
            {%>
         <a href="https://mpago.la/1G11oVM" class="btn btn-outline-primary">Pagar</a>
        <%} %>
         <%if (IDPedido == 2)
             {%>
       <a href="https://mpago.la/31SyV3w" class="btn btn-outline-primary">Pagar</a>
        <%} %>
         <%if (IDPedido == 3)
            {%>
         <a href="https://mpago.la/2xxEuXQ" class="btn btn-outline-primary">Pagar</a>
        <%} %>

    </div>
</asp:Content>
