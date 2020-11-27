<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Template_A_Home.aspx.cs" Inherits="WebForms.Templates_Prefabricados.Template_A" %>

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
    <!-- Estilos CSS -->
    <link href="../CSS/Template_A.css" rel="stylesheet" />
    <link href="../CSS/Estilos_Personalizar.css" rel="stylesheet" />
    <title>Titulo</title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex">
            <div id="sidebar-container" class="bg-primary">
                <div class="menu">
                    <p class="logo nombre-pagina">Nombre-Pagina</p>
                    <a href="#" class="btn btn-warning d-block seccion-button">Contacto</a>
                </div>
            </div>
            <div class="d-block" id="BodyCentro">
                <h1 id="titulo_principal">Titulo principal</h1>

                <img src="../Imagenes/NicolasFerreira.jpg" alt="Primer imagen" id="primer-imagen" />

                <h4 id="texto-home">Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                    when an unknown printer took a galley of type and scrambled it to make a type 
                    specimen book. It has survived not only five centuries, but also the leap into 
                    electronic typesetting, remaining essentially unchanged. It was popularised in 
                    the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
                    and more recently with desktop publishing software like Aldus PageMaker including 
                    versions of Lorem Ipsum.</h4>
            </div>
        </div>
    </form>
</body>
</html>
