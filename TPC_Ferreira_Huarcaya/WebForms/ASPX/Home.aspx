<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebForms.ASPX.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <style>
        .container-fluid{
            padding: 0;
        }
        #mainSlider .carousel-inner, #mainSlider .carousel-item {
            height: 100vh;
        }
        #mainSlider .carousel-caption {
            top:30%;
        }
         #mainSlider .carousel-caption h2 {
            font-size: 100px;
            margin-bottom: 30px;
            font-family: 'Pacifico', cursive;
           
        }
         #mainSlider .carousel-caption p {
           font-size: 22px;
           font-weight: 300;
           margin-bottom: 100px;
           color: #fff;
        }
         #mainSlider .carousel-caption a {
           font-size: 30px;
           border-radius: 0px;
            font-family: 'Raleway', sans-serif;
           
        }

    </style>
    
    <div class="container-fluid">
        <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="mainSlider" data-slide-to="0" class="active"></li>
                <li data-target="mainSlider" data-slide-to="1"></li>
                <li data-target="mainSlider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png" class="d-block w-100" alt="Imagene de Arte SVG" />
                    <div class="carousel-caption d-none d-md-block">
                        <h2>Paginas Web</h2>
                        <a href="Catalogo.aspx" class="btn btn-dark btn-neon">Ir!</a>   
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://cdn.pixabay.com/photo/2016/10/07/08/56/beauty-1721060__340.jpg" class="d-block w-100" alt="Imagene de Arte SVG" />
                    <div class="carousel-caption d-none d-md-block">
                        <h2>Arte</h2>
                        <a href="Catalogo.aspx" class="btn btn-dark ">Ir!</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://cdn.pixabay.com/photo/2014/09/07/21/52/city-438393__340.jpg" class="d-block w-100" alt="Imagene de Arte SVG" />
                    <div class="carousel-caption d-none d-md-block">
                        <h2>Contrataciones</h2>
                        <a href="Catalogo.aspx" class="btn btn-dark">Ir!</a>
                    </div>
                </div>
            </div>
            <a href="#mainSlider" class="carousel-control-prev" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a href="#mainSlider" class="carousel-control-next" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
        

</asp:Content>
