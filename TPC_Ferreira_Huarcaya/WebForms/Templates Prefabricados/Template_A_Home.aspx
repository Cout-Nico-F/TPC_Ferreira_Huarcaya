﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Template_A_Home.aspx.cs" Inherits="WebForms.Templates_Prefabricados.Template_A_Home" %>


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
    <title><%= RellenoVariable.Titulo %></title>
</head>
<body>

    <form id="form1" runat="server">
        <div class="d-flex">
            <div id="sidebar-container" class="bg-primary">
                <div class="menu">
                    <p class="logo nombre-pagina"><%= RellenoVariable.Nombre_Pagina %></p>
                    <a href="Template_A_Contacto.aspx" class="btn btn-warning d-block seccion-button">Contacto</a>
                </div>
            </div>
            <div class="d-block" id="BodyCentro">
                <h1 id="titulo_principal"><%=RellenoVariable.Titulo_Home %></h1>
                <img src="<%=RellenoVariable.Url_Imagen_Home %>" alt="Primer imagen" id="primer-imagen" />
                <h4 id="texto-home"><%=RellenoVariable.Texto_Home %></h4>
            </div>
        </div>
    </form>
</body>
</html>
