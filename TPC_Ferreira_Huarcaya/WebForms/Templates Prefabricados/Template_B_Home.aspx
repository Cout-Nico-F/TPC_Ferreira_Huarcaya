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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
             <a class="navbar-brand" href="#">
             <img src="<%=RellenoVariable.Url_Logo_Pagina %>" width="30" height="30" class="d-inline-block align-top" alt="" style="background-color: transparent">   <%=RellenoVariable.Nombre_Pagina %></a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="navbar-nav mr-auto ml-auto text-center">
                    <a class="nav-link" href="Template_B_Home.aspx">Home</a>
                    <a class="nav-link" href="Template_B_Catalogo.aspx">Catalogo</a>
                    <a class="nav-link" href="Template_B_Contacto.aspx">Contacto</a>
                </div>
                <div>
                    <div class="boton-nav-user">
                        <a href="Template_B_Login.aspx" style="color: white; margin-right: 30px;"><i class="fas fa-user"></i>Login</a>
                    </div>
                </div>
            </div>
        </nav>
        <br />
         <div class="container-fluid">
        <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="mainSlider" data-slide-to="0" class="active"></li>
                <li data-target="mainSlider" data-slide-to="1"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="<%=RellenoVariable.Url_Imagen_Home %>" class="d-block w-100" alt="Carousel_Imagen1" />
                    <div class="carousel-caption d-none d-md-block">
                        <h2><%=RellenoVariable.Titulo_Pagina1 %></h2>
                        <a href="Template_B_Catalogo.aspx" class="btn btn-dark btn-neon">Catalogo</a>   
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="<%=RellenoVariable.Url_Imagen_Home2 %>" class="d-block w-100" alt="Carousel_Imagen2" />
                    <div class="carousel-caption d-none d-md-block">
                        <h2><%=RellenoVariable.Titulo_Pagina2 %></h2>
                        <a href="Template_B_Contacto.aspx" class="btn btn-dark ">Informacion</a>
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
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </form>

   
</body>
</html>
