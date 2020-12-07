<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Template_A_Contacto.aspx.cs" Inherits="WebForms.Templates_Prefabricados.Template_A_Contacto1" %>

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

    <title>Titulo</title>

</head>
<body>
    <style>
         body{
            background:url(https://www.xtrafondos.com/wallpapers/resized/ubuntu-15-vivid-vervet-3441.jpg?s=large);
            background-size:cover;
        }
         img{
             width:50%;
             height:10%;
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
        .container{
        color:white;
        }
    </style>
    <form id="form1" runat="server">
        <div class="d-flex">
            <div id="sidebar-container" class="gris">
                <div class="menu">
                    <p class="logo nombre-pagina"><%=RellenoVariable.Nombre_Pagina %></p>
                    <a href="Template_A_Home.aspx" class="btn btn-warning d-block seccion-button">Home</a>
                </div>
            </div>
            <div class="container" id="BodyCentro">
                <h1 id="titulo_principal">Contactenos</h1>
                <p id="texto-Contacto"><%=RellenoVariable.Texto_Contacto %>
                </p>
                <div >
                    <h5>Telefono: <%=RellenoVariable.Telefono %> </h5>
                    <h5>Direccion: <%=RellenoVariable.Direccion %></h5>
                    <h5>Email: <%=RellenoVariable.Email %> </h5>
                </div>
                <hr />
                <hr />
                <img src="https://cdn.pixabay.com/photo/2017/01/14/10/56/men-1979261__340.jpg" alt="Imagen_Contacto" />
            </div>
        </div>
    </form>
</body>
</html>