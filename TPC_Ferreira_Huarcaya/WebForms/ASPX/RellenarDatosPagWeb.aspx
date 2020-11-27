<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="RellenarDatosPagWeb.aspx.cs" Inherits="WebForms.ASPX.RellenarDatosPagWeb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:label text="Titulo de la Web (Cabecera)" runat="server" />
        <asp:textbox runat="server" id="txtbox_titulo" />
    </div>

    <div>
        <asp:label text="Nombre de la web" runat="server" />
        <asp:textbox runat="server" id="txtbox_nombre" />
    </div>

    <div>
        <asp:label text="Titulo Home" runat="server" />
        <asp:textbox runat="server" id="txtbox_tituloHome" />
    </div>

    <div>
        <asp:label text="Url Imagen Home" runat="server" />
        <asp:textbox runat="server" id="txtbox_urlImagen" />
    </div>

    <div>
        <asp:label text="Texto Home" runat="server" />
        <asp:textbox runat="server" id="txtbox_textoHome" />
    </div>

    <div>
        <asp:label text="Texto Contacto" runat="server" />
        <asp:textbox runat="server" id="txtbox_textoContacto" />
    </div>

    <div>
        <asp:label text="Email" runat="server" />
        <asp:textbox runat="server" id="txtbox_email" />
    </div>

    <div>
        <asp:label text="Telefono" runat="server" />
        <asp:textbox runat="server" id="txtbox_telefono" />
    </div>

    <div>
        <asp:label text="Direccion" runat="server" />
        <asp:textbox runat="server" id="txtbox_direccion" />
    </div>

    <asp:button id="btn_Rellenar" Text="Rellenar!" runat="server" OnClick="btn_Rellenar_Click" />

</asp:Content>
