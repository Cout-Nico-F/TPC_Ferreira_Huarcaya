<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="RellenarDatosPagWeb.aspx.cs" Inherits="WebForms.ASPX.RellenarDatosPagWeb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <%if (IdRecibido == 1)
        {%>
    <h3 style="text-align: center">Informacion del Home</h3>
    <p style="text-align: center">Aca vas a poder ingresar algunos datos para hacer unica tu pagina</p>
    <div class="col-md-12 col-md-offset-2">
        <div class="col-md-12 form-group">
            <asp:Label Text="Titulo de la Web (Cabecera)" runat="server" />
            <asp:TextBox runat="server" ID="txtbox_titulo" CssClass="form-control" />
            <asp:Label Text="" runat="server" ID="lbl_titulo" />
        </div>

        <div class="col-md-12 form-group">
            <asp:Label Text="Nombre de la web" runat="server" />
            <asp:TextBox runat="server" ID="txtbox_nombre" CssClass="form-control" />
            <asp:Label Text="" runat="server" ID="lbl_nombre" />
        </div>

        <div class="col-md-12 form-group">
            <asp:Label Text="Titulo Home" runat="server" />
            <asp:TextBox runat="server" ID="txtbox_tituloHome" CssClass="form-control" />
            <asp:Label Text="" runat="server" ID="lbl_tituloHome" />
        </div>

        <div class="col-md-12 form-group">
            <asp:Label Text="Url Imagen Home" runat="server" />
            <asp:TextBox runat="server" ID="txtbox_urlImagen" CssClass="form-control" />
            <asp:Label Text="" runat="server" ID="lbl_urlImagen" />
        </div>

        <div class="col-md-12 form-group">
            <asp:Label Text="Texto Home" runat="server" />
            <asp:TextBox runat="server" ID="txtbox_textoHome" CssClass="form-control" />
            <asp:Label Text="" runat="server" ID="lbl_textoHome" />
        </div>
         <h3 style="text-align:center">Informacion de Contacto</h3>
         <p style="text-align:center">Aca vas a poder ingresar algunos datos para completar el Contacto </p>
        <div class="col-md-12 form-group">
            <asp:Label Text="Texto Contacto" runat="server" />
            <asp:TextBox runat="server" ID="txtbox_textoContacto" CssClass="form-control" />
            <asp:Label Text="" runat="server" ID="lbl_textoContacto" />
        </div>

        <div class="col-md-12 form-group">
            <asp:Label Text="Email" runat="server" />
            <asp:TextBox runat="server" ID="txtbox_email" CssClass="form-control" TextMode="Email" />
            <asp:Label Text="" runat="server" ID="lbl_email1" />
        </div>

        <div class="col-md-12 form-group">
            <asp:Label Text="Telefono" runat="server" />
            <asp:TextBox runat="server" ID="txtbox_telefono" CssClass="form-control" TextMode="Number" />
            <asp:Label Text="" runat="server" ID="lbl_telefono1" />
        </div>

        <div class="col-md-12 form-group">
            <asp:Label Text="Direccion" runat="server" />
            <asp:TextBox runat="server" ID="txtbox_direccion" CssClass="form-control" />
            <asp:Label Text="" runat="server" ID="lbl_direccion1" />
        </div>
        <div class="col-md-12 form-group">
            <asp:Button ID="btn_Rellenar" Text="Rellenar!" target="_blank" runat="server" OnClick="btn_Rellenar_Click" CssClass="btn btn-info btn-lg btn-block" />
              <%if (!(ValidarID1))
                     {%>
                    <a href="ConfirmarPedidoPagWeb.aspx?idPagina=<%=IdRecibido%>" class="btn btn-secondary btn-lg btn-block disabled"><i class="fas fa-shopping-cart"></i>Solicitar</a>
                 <%} %>
                 <%else
                { %>
                     <a href="ConfirmarPedidoPagWeb.aspx?idPagina=<%=IdRecibido%>" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-shopping-cart"></i>Solicitar</a>
                 <%} %>
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
                    <asp:Label Text="" runat="server" id="lbl_Nombre_Pagina"/>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Url de imagen del icono que acompaña el nombre la Pagina" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Url_Pagina" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Url_Pagina"/>
                </div>
            </div>

            <h3 style="text-align:center">Informacion del Carousel</h3>
            <p style="text-align:center">Aca vas a poder ingresar toda la informacion que requieres para hacer tu propia pagina de Home</p>

            <div class="col-md-12 col-md-offset-2">
                <div class="col-md-12 form-group">
                    <asp:Label Text="Titulo Imagen Carousel 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_titulo_carousel1" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_titulo_carousel1"/>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url Imagen Carousel 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_url1" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_url1"/>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Titulo Imagen Carousel 2" runat="server" />
                    <asp:TextBox runat="server" ID="txt_titulo_carousel2" CssClass="form-control" />
                     <asp:Label Text="" runat="server" id="lbl_titulo_carousel2"/>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url Imagen Carousel 2" runat="server" />
                    <asp:TextBox runat="server" ID="txt_url2" CssClass="form-control" />
                     <asp:Label Text="" runat="server" id="lbl_url2"/>
                </div>
            </div>

             <h3 style="text-align:center">Informacion del Catalogo</h3>
            <p style="text-align:center">Aca vas a poder ingresar toda la informacion que para tu pagina Catalogo</p>
            <div class="col-md-12 col-md-offset-2">
                <div class="col-md-12 form-group">
                    <asp:Label Text="Titulo del Catalogo" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Titulo_Catalogo" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Titulo_Catalogo"/>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Titulo del Producto 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Titulo_Card_Catalogo" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Titulo_Card_Catalogo"/>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Url Imagen del Producto 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Url_Imagen_Catalogo" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Url_Imagen_Catalogo"/>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Descripcion del Producto 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Descripcion_Catalogo" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Descripcion_Catalogo"/>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Precio del Producto 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Precio_Catalogo" CssClass="form-control" TextMode="Number"/>
                    <asp:Label Text="" runat="server" id="lbl_Precio_Catalogo"/>
                </div>
            </div>

            <div class="col-md-12 form-group">
                <asp:Button ID="btn_RellenoPagina2" Text="Rellenar!" target="_blank" runat="server" OnClick="btn_RellenoPagina2_Click" CssClass="btn btn-info btn-lg btn-block" />
                 <%if (!(ValidarID2))
                     {%>
                    <a href="ConfirmarPedidoPagWeb.aspx?idPagina=<%=IdRecibido%>" class="btn btn-secondary btn-lg btn-block disabled"><i class="fas fa-shopping-cart"></i>Solicitar</a>
                 <%} %>
                 <%else
                { %>
                     <a href="ConfirmarPedidoPagWeb.aspx?idPagina=<%=IdRecibido%>" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-shopping-cart"></i>Solicitar</a>
                 <%} %>
                
            </div>
    <%} %>    
            
    <%if (IdRecibido == 3)
        {%>
             <h3 style="text-align:center">Informacion del Home</h3>
            <p style="text-align:center">Aca vas a poder completar los datos requeridos para el home</p>
            <div class="col-md-12 col-md-offset-2">
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url imagen del Home" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Logo" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Logo"/>

                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Nombre de la Categoria 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_NombreCategoria1" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_NombreCategoria1"/>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 1" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo1" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_UrlVideo1"/>
                     <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 2" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo2" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_UrlVideo2"/>
                      <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>
                 <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 3" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo3" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_UrlVideo3"/>
                      <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Nombre de la Categoria 2" runat="server" />
                    <asp:TextBox runat="server" ID="txt_NombreCategoria2" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_NombreCategoria2"/>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 4" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo4" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_UrlVideo4"/>
                     <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 5" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo5" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_UrlVideo5"/>
                     <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>
                <div class="col-md-12 form-group">
                    <asp:Label Text="Url Video 6" runat="server" />
                    <asp:TextBox runat="server" ID="txt_UrlVideo6" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_UrlVideo6"/>
                     <small>La url la puede encontrar el la seccion compartir --> iframe --> src= "https://www.youtube.com/embed/ZytblQpydwQ" </small>
                </div>

                 <h3 style="text-align:center">Informacion de Contacto</h3>
                <p style="text-align:center">Aca vas a poder completar los datos necesarios para el formulario de contacto</p>
                 <div class="col-md-12 col-md-offset-2">
                <div class="col-md-12 form-group">
                    <asp:Label Text="Direccion" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Direccion" CssClass="form-control" />
                    <asp:Label Text="" runat="server" id="lbl_Direccion"/>
                </div>
                      <div class="col-md-12 form-group">
                    <asp:Label Text="Telefono" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Telefono" CssClass="form-control" TextMode="Number"/>
                    <asp:Label Text="" runat="server" id="lbl_Telefono"/>
                </div>
                      <div class="col-md-12 form-group">
                    <asp:Label Text="Email" runat="server" />
                    <asp:TextBox runat="server" ID="txt_Email" CssClass="form-control" TextMode="Email" />
                    <asp:Label Text="" runat="server" id="lbl_Email"/>
                </div>
               </div>
            </div>
             <div class="col-md-12 form-group">
                <asp:Button ID="btn_Rellenar3" Text="Rellenar!" target="_blank" runat="server" Onclick="btn_Rellenar3_Click" CssClass="btn btn-info btn-lg btn-block" />
                 <%if (!(ValidarID3))
                     {%>
                    <a href="ConfirmarPedidoPagWeb.aspx?idPagina=<%=IdRecibido%>" class="btn btn-secondary btn-lg btn-block disabled"><i class="fas fa-shopping-cart"></i>Solicitar</a>
                 <%} %>
                 <%else
                { %>
                     <a href="ConfirmarPedidoPagWeb.aspx?idPagina=<%=IdRecibido%>" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-shopping-cart"></i>Solicitar</a>
                 <%} %>
                
            </div>
     <%} %>
    </div>

</asp:Content>
