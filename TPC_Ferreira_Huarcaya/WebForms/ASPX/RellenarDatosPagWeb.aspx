<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="RellenarDatosPagWeb.aspx.cs" Inherits="WebForms.ASPX.RellenarDatosPagWeb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="col-md-12 col-md-offset-2">
    <div class="col-md-6 form-group">
        <asp:label text="Titulo de la Web (Cabecera)" runat="server" />
        <asp:textbox runat="server" id="txtbox_titulo" cssClass="form-control"/>
    </div>

    <div class="col-md-6 form-group">
        <asp:label text="Nombre de la web" runat="server" />
        <asp:textbox runat="server" id="txtbox_nombre" cssClass="form-control"/>
    </div>

    <div class="col-md-6 form-group">
        <asp:label text="Titulo Home" runat="server" />
        <asp:textbox runat="server" id="txtbox_tituloHome" cssClass="form-control" />
    </div>

    <div class="col-md-6 form-group">
        <asp:label text="Url Imagen Home" runat="server" />
        <asp:textbox runat="server" id="txtbox_urlImagen" cssClass="form-control" />
    </div>

    <div class="col-md-6 form-group">
        <asp:label text="Texto Home" runat="server" />
        <asp:textbox runat="server" id="txtbox_textoHome" cssClass="form-control"/>
    </div>

    <div class="col-md-6 form-group">
        <asp:label text="Texto Contacto" runat="server" />
        <asp:textbox runat="server" id="txtbox_textoContacto" cssClass="form-control" />
    </div>

    <div class="col-md-6 form-group">
        <asp:label text="Email" runat="server" />
        <asp:textbox runat="server" id="txtbox_email" cssClass="form-control"/>
    </div>

    <div class="col-md-6 form-group">
        <asp:label text="Telefono" runat="server" />
        <asp:textbox runat="server" id="txtbox_telefono" cssClass="form-control"/>
    </div>

    <div class="col-md-6 form-group">
        <asp:label text="Direccion" runat="server" />
        <asp:textbox runat="server" id="txtbox_direccion" cssClass="form-control"/>
    </div>
    
     <div class="col-md-6 form-group">
    <asp:button id="btn_Rellenar" Text="Rellenar!"  target="_blank" runat="server" OnClick="btn_Rellenar_Click" cssClass="btn btn-info btn-lg btn-block" />
    <a href="ConfirmarPedidoPagWeb.aspx?idPagina=<%=IdRecibido%>" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-shopping-cart"></i>Solicitar</a>
    </div>

    </div>

</asp:Content>
