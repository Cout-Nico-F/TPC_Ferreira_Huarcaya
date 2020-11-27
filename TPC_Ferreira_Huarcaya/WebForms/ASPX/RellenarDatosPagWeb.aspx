<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="RellenarDatosPagWeb.aspx.cs" Inherits="WebForms.ASPX.RellenarDatosPagWeb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:label text="Titulo de la Web (Cabecera)" runat="server" />
        <asp:textbox runat="server" />
    </div>

    <div>
        <asp:label text="Nombre de la web" runat="server" />
        <asp:textbox runat="server" />
    </div>

    <div>
        <asp:label text="Titulo Home" runat="server" />
        <asp:textbox runat="server" />
    </div>

    <div>
        <asp:label text="Url Imagen Home" runat="server" />
        <asp:textbox runat="server" />
    </div>

    <div>
        <asp:label text="Texto Home" runat="server" />
        <asp:textbox runat="server" />
    </div>

    <div>
        <asp:label text="Texto Contacto" runat="server" />
        <asp:textbox runat="server" />
    </div>

    <div>
        <asp:label text="Email" runat="server" />
        <asp:textbox runat="server" />
    </div>

    <div>
        <asp:label text="Telefono" runat="server" />
        <asp:textbox runat="server" />
    </div>

    <div>
        <asp:label text="Direccion" runat="server" />
        <asp:textbox runat="server" />
    </div>

</asp:Content>
