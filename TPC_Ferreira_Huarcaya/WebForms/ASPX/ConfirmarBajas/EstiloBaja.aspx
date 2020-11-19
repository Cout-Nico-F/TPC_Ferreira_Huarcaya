<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="EstiloBaja.aspx.cs" Inherits="WebForms.ASPX.ConfirmarBajas.EstiloBaja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center">
        <h1 class="jumbotron">  Confirmar baja del estilo <%=EstiloSeleccionado.Descripcion%></h1>
        <h3>Esta accion deshabilitará este estilo y ya no se listará como una opcion disponible</h3>

        <asp:Button ID="btn_Baja_Estilo" Text="Si, deseo deshabilitar este estilo" runat="server" CssClass="btn btn-danger" OnClick="Btn_Baja_Estilo_Click" />
        <br />
        <br />
        <a href="../PersonalizarUsuario.aspx" class="btn btn-info">No, no quiero deshabilitar este estilo ahora.</a>
    </div>

</asp:Content>
