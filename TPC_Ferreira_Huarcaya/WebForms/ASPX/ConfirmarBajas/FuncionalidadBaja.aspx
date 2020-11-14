<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="FuncionalidadBaja.aspx.cs" Inherits="WebForms.ASPX.ConfirmarBajas.FuncionalidadBaja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">   
    <h1 class="jumbotron"> Confirmar baja de la Funcionalidad <%=Funcionalidad.Descripcion %>   </h1>
    <h3> Esta accion eliminara la funcionalidad de la base de datos </h3>

    <asp:Button ID="btn_Baja_Funcionalidad" Text="Si, deseo eliminar permanentemente esta funcionalidad"  runat="server" CssClass="btn btn-danger" OnClick="Btn_Baja_Funcionalidad_Click"/>
    </div>
</asp:Content>
