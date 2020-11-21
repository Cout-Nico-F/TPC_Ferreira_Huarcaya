<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="ConfirmarPedidoPersonalizado.aspx.cs" Inherits="WebForms.ASPX.ConfirmarPedidoPersonalizado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h1>Confirmacion del pedido de pagina web Personalizada</h1>
        <h4>Al confirmar este pedido un miembro del Staff se comunicará al contacto que figura en su usuario para pactar una entrevista necesaria para el armado de su pagina web</h4>
        <h5>En la entrevista se pactaran fechas de entrega y monto de la seña inicial entre otros temas. Los pagos son por MercadoPago o transferencia bancaria.</h5>
    </div>
    <div style="text-align:center">
        <h4>Precio Final: $<%=Pedido.Precio %></h4>
        <asp:Label Text="Comentarios: " ID="lb_Comentarios"  runat="server" for="txtBox_Comentarios"/>
        <asp:TextBox runat="server" ID="txtBox_Comentarios" placeholder="Estos comentarios seran leidos por el staff antes de comunicarse con usted" Width="1000" MaxLength="200"/>
        <asp:button id="btn_Confirmar" text="Si! Quiero esta pagina web." runat="server" onclick="btn_Confirmar_Click1"/>
    </div>

</asp:Content>
