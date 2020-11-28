<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="PaginaPrediseniada01.aspx.cs" Inherits="WebForms.ASPX.PaginaPrediseniada01" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">

        <%if (RellenoPagina != null)
            { %>
        <h1><%=RellenoPagina.Titulo %></h1>
        <h1><%=RellenoPagina.Nombre_Pagina %></h1>
        <h1><%=RellenoPagina.Titulo_Home%></h1>
        <h1><%=RellenoPagina.Texto_Home %></h1>
        <h1><%=RellenoPagina.Url_Imagen_Home%></h1>
        <h1><%=RellenoPagina.Texto_Contacto %></h1>
        <h1><%=RellenoPagina.Email %></h1>
        <h1><%=RellenoPagina.Telefono %></h1>
        <h1><%=RellenoPagina.Direccion %></h1>
        <%} %>
        

        <br />
        <br />
        <div class="col-md-12 col-md-offset-2">
            <div class="col-md-6 form-group">
                <asp:Label Text="Titulo" runat="server" />
                <asp:TextBox runat="server" ID="txt_titulo" CssClass="form-control" />
            </div>
            <div class="col-md-6 form-group">
                <asp:Label Text="Nombre Pagina" runat="server" />
                <asp:TextBox runat="server" ID="txt_NombrePagina" CssClass="form-control" />
            </div>
            <div class="col-md-6 form-group">
                <asp:Label Text="Titulo Home" runat="server" />
                <asp:TextBox runat="server" ID="txt_tituloHome" CssClass="form-control" />
            </div>
            <div class="col-md-6 form-group">
                <asp:Label Text="Texto Home" runat="server" />
                <asp:TextBox runat="server" ID="txt_Home" CssClass="form-control" />
            </div>
            <div class="col-md-6 form-group">
                <asp:Label Text="Url Home" runat="server" />
                <asp:TextBox runat="server" ID="txt_UrlHome" CssClass="form-control" />
            </div>
            <div class="col-md-6 form-group">
                <asp:Label Text="Texto Contacto" runat="server" />
                <asp:TextBox runat="server" ID="txt_TextoContacto" CssClass="form-control" />
            </div>
             <div class="col-md-6 form-group">
                <asp:Label Text="Texto Contacto" runat="server" />
                <asp:TextBox runat="server" ID="txt_Email" CssClass="form-control" />
            </div>
             <div class="col-md-6 form-group">
                <asp:Label Text="Telefono" runat="server" />
                <asp:TextBox runat="server" ID="txt_Telefono" CssClass="form-control" />
            </div>
             <div class="col-md-6 form-group">
                <asp:Label Text="Direccion" runat="server" />
                <asp:TextBox runat="server" ID="txt_Direccion" CssClass="form-control" />
            </div>

            <div class="col-md-6 form-group">
            </div>
            <asp:Button Text="Vista Previa" runat="server" ID="btn_VistaPrevia" OnClick="btn_VistaPrevia_Click" />
        </div>
    </div>
</asp:Content>
