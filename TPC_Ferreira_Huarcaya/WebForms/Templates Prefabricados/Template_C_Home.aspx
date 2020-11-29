<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Template_C_Home.aspx.cs" Inherits="WebForms.Templates_Prefabricados.Template_C_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!--Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Raleway:wght@500&display=swap" rel="stylesheet" />
   
    <title>Template C Home</title>

</head>
<body>

    <style>
         body{
            background-color:black;
        }
        .jumbotron{
            background-color: orange;
            height: 500px;
        }
        .display-4 img{
            text-align: center;
            width: 500px;
            height: 400px;
        }
        h1{
            color: white;
            text-align: center;
            font-family: 'Permanent Marker', cursive;
        }
        iframe{
            margin-left: 100px;
            width: 500px;
            height: 300px;
        }
    </style>

    <form id="form1" runat="server">
        
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-link active" href="Template_C_Home.aspx">Home</a>
            <a class="nav-link" href="Template_C_Contacto.aspx">Contacto</a>
          </div>
        </div>
      </nav>
        
        <div class="jumbotron jumbotron-fluid" >
            <div class="container">
                <h1 class="display-4"><img src="<%=RellenoVariable.Url_Logo %>" alt="No se encontro la imagen" /></h1>
            </div>
        </div>
        <br/><br/>
        <h1><%=RellenoVariable.Nombre_Categoria1 %></h1>
        <br/><br/>
        <iframe  src="<%=RellenoVariable.Url_Video1_Categoria1 %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <iframe  src="<%=RellenoVariable.Url_Video2_Categoria1 %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <iframe  src="<%=RellenoVariable.Url_Video3_Categoria1 %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <br/>
        <br/>
        <h1><%=RellenoVariable.Nombre_Categoria2 %></h1>
        <br/><br/>
        <iframe  src="<%=RellenoVariable.Url_Video1_Categoria2 %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <iframe  src="<%=RellenoVariable.Url_Video1_Categoria2 %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <iframe  src="<%=RellenoVariable.Url_Video1_Categoria2 %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <br/><br/><br/>
    </form>

</body>
</html>
