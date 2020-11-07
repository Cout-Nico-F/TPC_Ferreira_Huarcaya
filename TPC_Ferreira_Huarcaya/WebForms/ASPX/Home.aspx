<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebForms.ASPX.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <style>
       
        #carouselExampleIndicators{
            position: relative;
            height: 100vh;
            width: 100%;
        }
        #carouselExampleIndicators .carousel-inner{
            position: relative;
            height: 100%;
            width: 100%;
            background: #000;
        }
         #carouselExampleIndicators .carousel-inner .carousel-item h1{
                     position: absolute;
                     background-color: transparent;
                     height: auto;
                     color: white;
                     width: 100%;
                     top: 50%;
                     transform: translateX(0%);
                     transform: translateY(-60%);
                     z-index: 1;
                     text-align: center;
                     font-size: 5.5em;
         }
         #carouselExampleIndicators .carousel-inner .carousel-item a{
                     position: absolute;
                     color: white;
                     top: 50%;
                     transform: translateX(0%);
                     transform: translateY(80%);
                     z-index: 1;
                     text-align: center;
                     font-size: 1.5em;
         }
         #carouselExampleIndicators .carousel-inner .carousel-item:nth-child(1) {
            position: relative;
            height: 100%;
            width: 100%;
            background:url(../Imagenes/Arte.svg);
            background-size: 40% 100%;
            background-position: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

         #carouselExampleIndicators .carousel-inner .carousel-item:nth-child(2) {
            background:url(../Imagenes/Seo.svg);
            background-size: 100% 100%;
            background-position: center; 
         }

         #carouselExampleIndicators .carousel-inner .carousel-item:nth-child(3) {
           background:url(../Imagenes/Info.svg);
            background-size: 100% 100%;
            background-position: center; 
          }
                
                  
    </style>

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <h1>Paginas Web</h1>
                <a href="Catalogo.aspx" class="btn btn-dark">Vamos alla!</a>
            </div>
            <div class="carousel-item other">
               <h1>Arte</h1>
                <a href="Catalogo.aspx" class="btn btn-dark">Vamos alla!</a>
            </div>
            <div class="carousel-item">
                <h1>Contrataciones</h1>
                <a href="Catalogo.aspx" class="btn btn-dark">Vamos alla!</a>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!--
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
             <div class="container">
            <div class="carousel-item active">
                    <h1>Paginas Web</h1>
                    <p>Aca encontraras todo lo relacionado con Paginas Web</p>
                    <a href="#" class="btn btn-lg btn-primary">Vamos a empezar!!</a>
                </div>
            </div>
            <div class="carousel-item">
                <img src="..." class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="..." class="d-block w-100" alt="...">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div> -->

    <!--<div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active" id="PaginaW">
                <div class="container">
                    <h1>Paginas Web</h1>
                    <p>Aca encontraras todo lo relacionado con Paginas Web</p>
                    <a href="#" class="btn btn-lg btn-primary">Vamos a empezar!!</a>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <h1>Paginas Web</h1>
                    <p>Aca encontraras todo lo relacionado con Paginas Web</p>
                    <a href="#" class="btn btn-lg btn-primary">Vamos a empezar!!</a>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <h1>Paginas Web</h1>
                    <p>Aca encontraras todo lo relacionado con Paginas Web</p>
                    <a href="#" class="btn btn-lg btn-primary">Vamos a empezar!!</a>
                </div>
            </div>
        </div>
        <a href="#myCarousel" class="carousel-control-prev" role="button" data-slide="prev">
            <span class="sr-only">Previous</span>
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        </a>

    </div> -->

    
    


    <!--<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
    </div>
         <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../Imagenes/ArteWeb.jpg" class="d-block w-100" alt="...">
                <p id="text"></p>
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
        </a> -->
        

</asp:Content>
