<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Template_B_Home.aspx.cs" Inherits="WebForms.Templates_Prefabricados.Template_B_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <!-- Bootstrap 4 CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!-- Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet" />
   
    <title>Template B</title>

</head>
<body>
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
            font-size: 10em;
            margin-bottom: 0.2em;
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
           border-radius: 1em;
           font-family: 'Raleway', sans-serif;
           background-color:rgb(229, 232, 110 );
           
        }
         #mainSlider .carousel-caption a:hover
         {
             background-color:rgb(210, 213, 124 );
         }

    </style>
    <form id="form1" runat="server">
         <div class="container-fluid">
        <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="mainSlider" data-slide-to="0" class="active"></li>
                <li data-target="mainSlider" data-slide-to="1"></li>
                <li data-target="mainSlider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="<%=RellenoVariable.Url_Imagen_Home %>" class="d-block w-100" alt="Carousel_Imagen1" />
                    <div class="carousel-caption d-none d-md-block">
                        <h2><%=RellenoVariable.Titulo_Pagina1 %></h2>
                        <a href="#" class="btn btn-dark btn-neon">Catalogo</a>   
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="<%=RellenoVariable.Url_Imagen_Home2 %>" class="d-block w-100" alt="Carousel_Imagen2" />
                    <div class="carousel-caption d-none d-md-block">
                        <h2><%=RellenoVariable.Titulo_Pagina2 %></h2>
                        <a href="#" class="btn btn-dark ">Informacion</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="<%=RellenoVariable.Url_Imagen_Home3 %>" class="d-block w-100" alt="Carousel_Imagen3" />
                    <div class="carousel-caption d-none d-md-block">
                        <h2><%=RellenoVariable.Titulo_Pagina3 %></h2>
                        <a href="#" class="btn btn-dark">Contacto</a>
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
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js "></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" ></script>
</body>
</html>
