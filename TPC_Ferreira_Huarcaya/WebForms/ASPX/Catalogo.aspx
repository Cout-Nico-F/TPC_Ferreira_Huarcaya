<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="WebForms.ASPX.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Hola bienvenido</h1>
            <p class="lead">Estamos trabajando.... <i class="fas fa-exclamation-triangle"></i></p>
        </div>
    </div>
    <!--Se que a Maxi no le gusta el uso de br(en un vivo le pregunte) pero no se me ocurre otra forma -->
    <br />
    <br />
    <section id="facilities">
        <div class="container">
            <div class="row">
                <div class="col md-5 col-sm-4">
                    <div class="card text-center">
                        <img src="../Imagenes/Page_Admin.png" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title">Admin SB2</h5>
                            <p class="card-text">SB Admin 2 es un tema de administración gratuito, de código abierto, basado en Bootstrap 4, perfecto para crear rápidamente paneles y aplicaciones web. 
                                Su estilo de diseño moderno con sombras sutiles y un diseño basado en tarjetas podría describirse como material plano y 
                                está inspirado en los principios del diseño de materiales junto con un sistema de color simple y atractivo.</p>
                            <a href="../Templates Prefabricados/Template_01/index.html" class="btn btn-info btn-lg btn-block">Vista Previa</a>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Solicitar</button>
                            <a href="Personalizar.aspx" class="btn btn-secondary btn-lg btn-block">Personalizar</a>
                        </div>
                    </div>
                </div>
                <div class="col md-1 col-sm-4">
                    <div class="card text-center">
                        <img src="../Imagenes/Page_Creative.png" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title">Creative</h5>
                            <p class="card-text">Creative es un tema Bootstrap de una página para creativos, pequeñas empresas y otros usos multiusos. 
                                ¡Un estilo de diseño moderno y plano funciona al unísono con características y 
                                complementos ricos que hacen de este tema un excelente modelo para su próximo proyecto basado en Bootstrap!</p>
                            <a href="../Templates Prefabricados/Template_02/index.html" class="btn btn-info btn-lg btn-block">Vista Previa</a>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Solicitar</button>
                            <a href="Personalizar.aspx" class="btn btn-secondary btn-lg btn-block">Personalizar</a>
                        </div>
                    </div>
                </div>
                 <div class="col md-2 col-sm-4">
                    <div class="card text-center">
                        <img src="../Imagenes/Page_Agency.png" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title">Agency</h5>
                            <p class="card-text">Agency es un tema HTML / CSS de una página creado con Bootstrap. Este tema es perfecto para agencias o 
                                pequeñas empresas que buscan configurar una página de destino simple para su empresa. 
                                El tema también se puede modificar y ajustar para adaptarse a casi cualquier propósito. ¡Descarga este tema gratuito de Bootstrap ahora para comenzar!</p>
                            <a href="../Templates Prefabricados/Template_03/index.html" class="btn btn-info btn-lg btn-block">Vista Previa</a>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Solicitar</button>
                            <a href="Personalizar.aspx" class="btn btn-secondary btn-lg btn-block">Personalizar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="facilitie">
        <div class="container">
            <div class="row">
                <div class="col md-5 col-sm-4">
                    <div class="card text-center">
                        <img src="../Imagenes/Page_Portfolio.png" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title">Stylish Portfolio</h5>
                            <p class="card-text">Elegante portafolio es un tema de portafolio de Bootstrap de una página con navegación fuera del lienzo y 
                                desplazamiento suave por las secciones de contenido.</p>
                            <a href="../Templates Prefabricados/Template_04/index.html" class="btn btn-info btn-lg btn-block">Vista Previa</a>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Solicitar</button>
                            <a href="Personalizar.aspx" class="btn btn-secondary btn-lg btn-block">Personalizar</a>
                        </div>
                    </div>
                </div>
                <div class="col md-1 col-sm-4">
                    <div class="card text-center">
                        <img src="../Imagenes/Page_Home.png" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title">Shop Homepage</h5>
                            <p class="card-text">Shop Homepage es una plantilla de inicio para una tienda en línea basada en Bootstrap o un sitio web de comercio electrónico.</p>
                            <a href="../Templates Prefabricados/Template_05/index.html" class="btn btn-info btn-lg btn-block">Vista Previa</a>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Solicitar</button>
                            <a href="Personalizar.aspx" class="btn btn-secondary btn-lg btn-block">Personalizar</a>
                        </div>
                    </div>
                </div>
                 <div class="col md-2 col-sm-4">
                    <div class="card text-center">
                        <img src="../Imagenes/Page_Casual.png" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title">Bussines Casual</h5>
                            <p class="card-text">Business Casual es una plantilla de sitio web completa para Bootstrap 4. Cuenta con cuatro páginas HTML diferentes y una serie de componentes de estilo personalizados.</p>
                            <a href="../Templates Prefabricados/Template_06/index.html" class="btn btn-info btn-lg btn-block">Vista Previa</a>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Solicitar</button>
                            <a href="Personalizar.aspx" class="btn btn-secondary btn-lg btn-block">Personalizar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <script samesite="None; Secure" src="https://static.landbot.io/landbot-widget/landbot-widget-1.0.0.js"></script>
        <script>
            var myLandbot = new LandbotLivechat({
                index: 'https://chats.landbot.io/v2/H-749446-IDIBFL9M7ZRC4OK9/index.html',
            });
        </script>
    </footer>
   

</asp:Content>
