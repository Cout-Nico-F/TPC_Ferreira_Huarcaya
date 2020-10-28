<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebForms.ASPX.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Agregue un segundo navbar para hacer sticky junto con el anterior quiero hacer un smooth control -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" href="#PaginaWeb">Paginas Web <span class="sr-only">(current)</span></a>
                <a class="nav-link" href="#Arte">Arte</a>
                <a class="nav-link" href="#">Contrataciones</a>
                <a class="nav-link" href="#About">Acerca de</a>
            </div>
        </div>
    </nav>
    <!--No tiene agregado la hoja de css en el master??  -->
    <div id="PaginaWeb">
        <img src="../Imagenes/Paisaje_01.png" alt="Imagen no encontrada"/>
    </div>
     <div id="Arte">
        <img src="../Imagenes/ArteWeb.jpg" alt="Imagen no encontrada"/>
    </div>
     <div id="About">
        <img src="../Imagenes/Espacio.jpg" alt="Imagen no encontrada"
            <h1 style="color:white;">Hola</h1>/>
    </div>

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
