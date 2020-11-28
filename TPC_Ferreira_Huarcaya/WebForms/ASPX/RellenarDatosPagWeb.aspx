<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="RellenarDatosPagWeb.aspx.cs" Inherits="WebForms.ASPX.RellenarDatosPagWeb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <%if (IdRecibido == 1)
        {%>
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
    <%} %>
    
    
    <%if (IdRecibido == 2)
        {%>
            <div class="col-md-12 col-md-offset-2">
                <div class="col-md-6 form-group">
                    <asp:Label Text="Titulo Imagen Carousel 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_titulo_carousel1" CssClass="form-control" />
                </div>
                <div class="col-md-6 form-group">
                    <asp:Label Text="Url Imagen Home" runat="server" />
                    <asp:TextBox runat="server" ID="txt_url1" CssClass="form-control" />
                </div>
                <div class="col-md-6 form-group">
                    <asp:Label Text="Titulo Imagen Carousel 2" runat="server" />
                    <asp:TextBox runat="server" ID="txt_titulo_carousel2" CssClass="form-control" />
                </div>
                <div class="col-md-6 form-group">
                    <asp:Label Text="Url Imagen Home2" runat="server" />
                    <asp:TextBox runat="server" ID="txt_url2" CssClass="form-control" />
                </div>
                <div class="col-md-6 form-group">
                    <asp:Label Text="Titulo Imagen Carousel 3" runat="server" />
                    <asp:TextBox runat="server" ID="txt_titulo_carousel3" CssClass="form-control" />
                </div>
                <div class="col-md-6 form-group">
                    <asp:Label Text="Url Imagen Home3" runat="server" />
                    <asp:TextBox runat="server" ID="txt_url3" CssClass="form-control" />
                </div>
                <div class="col-md-6 form-group">
                    <asp:Button ID="btn_RellenoPagina2" Text="Rellenar!" target="_blank" runat="server" OnClick="btn_RellenoPagina2_Click" CssClass="btn btn-info btn-lg btn-block" />
                </div>
            </div>
            <%} %>

            <div class="col-md-6 form-group">
    <a href="ConfirmarPedidoPagWeb.aspx?idPagina=<%=IdRecibido%>" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-shopping-cart"></i>Solicitar</a>
    </div>

    </div>

</asp:Content>
