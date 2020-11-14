<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="PaginaBaja.aspx.cs" Inherits="WebForms.ASPX.ConfirmarBajas.PaginaBaja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="text-align: center">
        <h1 class="jumbotron">  Confirmar baja de la pagina <%=PaginaSeleccionada.Descripcion %></h1>
        <h3>Esta accion eliminara la pagina de la base de datos</h3>

        <asp:Button ID="btn_Baja_Pagina" Text="Si, deseo eliminar permanentemente esta pagina" runat="server" CssClass="btn btn-danger" OnClick="btn_Baja_Pagina_Click" />
        <br />
        <br />
        <a href="../Personalizar.aspx" class="btn btn-info">No, no quiero eliminar este estilo ahora.</a>
    </div>

</asp:Content>
