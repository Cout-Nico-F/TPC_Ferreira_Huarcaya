<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Template_A_Home.aspx.cs" Inherits="WebForms.Templates_Prefabricados.Template_A_Home" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Bootstrap 4 CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!-- Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet" />

    <title><%= RellenoVariable.Titulo %></title>

</head>
<body > 
   
    <style>
        body{
            background:url(https://www.xtrafondos.com/wallpapers/resized/ubuntu-15-vivid-vervet-3441.jpg?s=large);
            background-size:cover;
        }
       .d-block h1{
            color: darkslategray;
            text-align: center;
            font-size:70px;
            margin-right:60px;
        }

        #texto-home {
            text-align: center;
            margin-top: 10px;
            margin-left:40%;
        }

        #primer-imagen {
            width: 60%;
            height: 15%;
            margin-left: 40%;   
        }

        #imagen-contacto {
            width: auto;
            height: auto;
            margin-left: 35%;
        }

        .seccion-button {
            margin: 3%;
            margin-bottom: 15%;
        }

        .nombre-pagina {
            margin-bottom: 25%;
        }
        h1{
            margin-left:50%;
            
        }
        h4{
            color: white;
        }
        #sidebar-container {
             min-height: 300vh;
        }
        #sidebar-container .menu {
             width: 20rem;
        } 
        .gris{
             background-color: #808080;
        }
        .logo {
            color: white;
            text-align: center;
            font-weight: bold;
            font-size: 50px;
            font-family: 'Anton', sans-serif;
        }
 
    </style>

    <form id="form1" runat="server">
        <div class="d-flex">
            <div id="sidebar-container" class="gris">
                <div class="menu">
                    <p class="logo nombre-pagina"><%= RellenoVariable.Nombre_Pagina %></p>
                    <a href="Template_A_Contacto.aspx" class="btn btn-warning d-block seccion-button">Contacto</a>
                </div>
            </div>
            <div class="d-block">
                <br />
                <br />
                <h1><%=RellenoVariable.Titulo_Home %></h1>
                <img src="<%=RellenoVariable.Url_Imagen_Home %>" alt="Primer imagen" id="primer-imagen" class="img-thumbnail "/>
                <h4 id="texto-home"><%=RellenoVariable.Texto_Home %></h4>
            </div>
        </div>
    </form>
</body>
</html>
