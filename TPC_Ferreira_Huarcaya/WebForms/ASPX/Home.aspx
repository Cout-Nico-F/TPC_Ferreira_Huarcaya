<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebForms.ASPX.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server

    <!--Las imagenes las saque de UnDraw solo las descargue -->
    <!--Tuve un error con las imagenes las descargue y venian con un fondo blanco y yo lo queria sin fondo entonces lo descargue como svg y listo (lo tuve que buscar) -->
    <div id="estilo">
         <section id="sec1">
        <div class="contenedor-texto">
            <h2>Paginas Web</h2>
            <p>sadsadasdas</p>
            <a href="Catalogo.aspx">Section 2</a>
            <img src="../Imagenes/Landing_Page.svg" alt="Landing Page no found"/>
        </div>
    </section>
    <section id="sec2">
         <div class="contenedor-texto">
            <h2>Arte </h2>
            <p>sadsadasdas</p>
            <a href="#">Section 2</a>
            <img src="../Imagenes/Uno.svg" alt="Landing Page no found"/>
        </div>
    </section>
    <section id="sec3">
         <div class="contenedor-texto">
            <h2>Contrataciones</h2>
            <p>sadsadasdas</p>
            <a href="#">Section 2</a>
            <img src="../Imagenes/Team.svg" alt="Landing Page no found"/>
        </div>
    </section>
    </div>
   

    <!--No tiene agregado la hoja de css en el master??  -->
    <!--<div id="PaginaWeb">
        <img src="../Imagenes/Paisaje_01.png" alt="Imagen no encontrada"/>
    </div>
     <div id="Arte">
        <img src="../Imagenes/ArteWeb.jpg" alt="Imagen no encontrada"/>
    </div>
     <div id="About">
        <img src="../Imagenes/Espacio.jpg" alt="Imagen no encontrada"
            <h1 style="color:white;">Hola</h1>/>
    </div>-->

    <!-- Por ahora lo saco-->
    <!--<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
    </div>
         <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../Imagenes/Paisaje_01.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="../Imagenes/ArteWeb.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>-->

    <!-- jQuery and JS bundle w/ Popper.js -->
    <!--Esto es para agregar funcionalidad para el carousel-->
   <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script> -->

</asp:Content>
