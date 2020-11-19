<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="PaginaBaja.aspx.cs" Inherits="WebForms.ASPX.ConfirmarBajas.PaginaBaja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="text-align: center">
        <h1 class="jumbotron">  Confirmar baja de la pagina <%=PaginaSeleccionada.Descripcion %></h1>
        <h3>Esta accion deshabilitará esta pagina y ya no se listará como una opcion disponible</h3>

        <asp:Button ID="btn_Baja_Pagina" Text="Si, deseo deshabilitar esta pagina" runat="server" CssClass="btn btn-danger" OnClick="btn_Baja_Pagina_Click" />
        <br />
        <br />
        <a href="../PersonalizarUsuario.aspx" class="btn btn-info">No, no quiero deshabilitar esta pagina ahora.</a>
    </div>

</asp:Content>
