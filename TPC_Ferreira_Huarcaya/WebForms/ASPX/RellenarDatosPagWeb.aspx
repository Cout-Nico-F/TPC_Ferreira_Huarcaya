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
             <h3 style="text-align:center">Informacion de la Pagina</h3>
            <p style="text-align:center">Aca vas a poder ingresar algunos datos para hacer unica tu pagina</p>
            <div class="col-md-12 col-md-offset-2">
                <div class="col-md-12 form-group">
                    <asp:Label Text="Nombre de la Pagina" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Nombre_Pagina" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_NombrePagina"/>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Url de la Pagina" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Url_Pagina" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_url_Pagina"/>
                </div>
            </div>

            <h3 style="text-align:center">Informacion del Carousel</h3>
            <p style="text-align:center">Aca vas a poder ingresar toda la informacion que requieres para hacer tu propia pagina de Home</p>

            <div class="col-md-12 col-md-offset-2">
                <div class="col-md-12 form-group">
                    <asp:Label Text="Titulo Imagen Carousel 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_titulo_carousel1" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Titulo"/>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url Imagen Home" runat="server" />
                    <asp:TextBox runat="server" ID="txt_url1" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Imagen"/>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Titulo Imagen Carousel 2" runat="server" />
                    <asp:TextBox runat="server" ID="txt_titulo_carousel2" CssClass="form-control" />
                     <asp:Label Text="" runat="server" id="lbl_Titulo2"/>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url Imagen Home2" runat="server" />
                    <asp:TextBox runat="server" ID="txt_url2" CssClass="form-control" />
                     <asp:Label Text="" runat="server" id="lbl_Imagen2"/>
                </div>
            </div>

             <h3 style="text-align:center">Informacion del Catalogo</h3>
            <p style="text-align:center">Aca vas a poder ingresar toda la informacion que para tu pagina Catalogo</p>
            <div class="col-md-12 col-md-offset-2">
                <div class="col-md-12 form-group">
                    <asp:Label Text="Titulo Catalogo" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Titulo_Catalogo" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Titulo_Catalogo"/>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Titulo Card Catalogo" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Titulo_Card_Catalogo" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Titulo_Card_Catalogo"/>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Url Imagen Catalogo" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Url_Imagen_Catalogo" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Url_Imagen_Catalogo"/>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Descripcion Card Catalogo" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Descripcion_Catalogo" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Descripcion_Catalogo"/>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Precio Producto" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Precio_Catalogo" CssClass="form-control" TextMode="Number"/>
                    <asp:Label Text="" runat="server" id="lbl_Precio_Catalogo"/>
                </div>
            </div>

            <div class="col-md-12 form-group">
                <asp:Button ID="btn_RellenoPagina2" Text="Rellenar!" target="_blank" runat="server" OnClick="btn_RellenoPagina2_Click" CssClass="btn btn-info btn-lg btn-block" />
            </div>
    <%} %>    
            
    <%if (IdRecibido == 3)
        {%>
             <h3 style="text-align:center">Informacion del Home</h3>
            <p style="text-align:center">Aca vas a poder completar los datos requeridos para el home</p>
            <div class="col-md-12 col-md-offset-2">
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url Logo Home" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Logo" CssClass="form-control" />
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Nombre de la Categoria 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_NombreCategoria1" CssClass="form-control" />
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo1" CssClass="form-control" />
                     <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 2" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo2" CssClass="form-control" />
                      <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 3" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo3" CssClass="form-control" />
                      <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Nombre de la Categoria 2" runat="server" />
                    <asp:TextBox runat="server" ID="txt_NombreCategoria2" CssClass="form-control" />
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 4" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo4" CssClass="form-control" />
                     <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 5" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo5" CssClass="form-control" />
                     <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 6" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo6" CssClass="form-control" />
                     <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>

                 <h3 style="text-align:center">Informacion de Contacto</h3>
                <p style="text-align:center">Aca vas a poder completar los datos necesarios para el formulario de contacto</p>
                 <div class="col-md-12 col-md-offset-2">
                <div class="col-md-12 form-group">
                    <asp:Label Text="Direccion" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Direccion" CssClass="form-control" />
                </div>
                      <div class="col-md-12 form-group">
                    <asp:Label Text="Telefono" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Telefono" CssClass="form-control" TextMode="Number"/>
                </div>
                      <div class="col-md-12 form-group">
                    <asp:Label Text="Email" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Email" CssClass="form-control" TextMode="Email" />
                </div>
               </div>
            </div>
             <div class="col-md-12 form-group">
                <asp:Button ID="btn_Rellenar3" Text="Rellenar!" target="_blank" runat="server" Onclick="btn_Rellenar3_Click" CssClass="btn btn-info btn-lg btn-block" />
            </div>
            <asp:Button Text="Enviar mail" runat="server" id="btn_Enviar" OnClick="btn_Enviar_Click"/>
     <%} %>
             <!-- <a href="ConfirmarPedidoPagWeb.aspx?idPagina=<%=IdRecibido%>" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-shopping-cart"></i>Solicitar</a> -->

    </div>

</asp:Content>
