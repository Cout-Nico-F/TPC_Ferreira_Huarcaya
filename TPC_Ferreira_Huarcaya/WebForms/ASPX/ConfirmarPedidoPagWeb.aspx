<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="ConfirmarPedidoPagWeb.aspx.cs" Inherits="WebForms.ASPX.ConfirmarPedidoPagWeb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h1 style="text-align:center">Confirmación del pedido de pagina web</h1>
        <h4>Al confirmar este pedido un miembro del Staff se comunicará al contacto que figura en su usuario para pactar una entrevista necesaria para el armado de su pagina web</h4>
        <h5>En la entrevista se pactaran fechas de entrega y monto de la seña inicial entre otros temas. Los pagos son por MercadoPago o transferencia bancaria.</h5>
    </div>
    <div class="col md-5 col-sm-4" style="margin-bottom: 40px; margin-left:35%;">
        <div class="card text-center" >
            <img src="<%=item.Url_Imagen %>" class="card-img-top" alt="No se encontro la imagen" />
            <div class="card-body">
                <h5 class="card-title"><%=item.Titulo %></h5>
                <p class="card-text"><%=item.Descripcion %></p>
                <!-- Comentario -->
            </div>
        </div>
    </div>
    <div style="text-align:center">
        <h4>Precio Final: $<%=item.Precio%></h4>
        <asp:Label Text="Comentarios: " ID="lb_Comentarios"  runat="server" for="txtBox_Comentarios"/>
        <asp:TextBox runat="server" ID="txtBox_Comentarios" placeholder="Estos comentarios seran leidos por el staff antes de comunicarse con usted" Width="1000" MaxLength="200"/>
        <asp:Button id="btn_Confirmar" Text="Si! Quiero esta pagina web." runat="server" onclick="btn_Confirmar_Click"  CssClass="btn btn-outline-info"/>
    </div>
</asp:Content>
