<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="FuncionalidadBaja.aspx.cs" Inherits="WebForms.ASPX.ConfirmarBajas.FuncionalidadBaja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">   
    <h1 class="jumbotron"> Confirmar baja de la Funcionalidad <%=Funcionalidad.Descripcion %>   </h1>
    <h3> Esta accion deshabilitará esta funcionalidad y ya no se listará como una opcion disponible </h3>

    <asp:Button ID="btn_Baja_Funcionalidad" Text="Si, deseo deshabilitar esta funcionalidad"  runat="server" CssClass="btn btn-danger" OnClick="Btn_Baja_Funcionalidad_Click"/>
        <br />
        <br />
    <a href="../PersonalizarUsuario.aspx" class="btn btn-info">No, no quiero deshabilitar esta funcionalidad ahora.</a>
    </div>
</asp:Content>
