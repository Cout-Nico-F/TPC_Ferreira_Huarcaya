<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Template_B_Catalogo.aspx.cs" Inherits="WebForms.Templates_Prefabricados.Template_B_Catalogo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <!--Hoja de estilos CSS -->
    <link href="../CSS/css_master1.css" rel="stylesheet" />
    <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!--Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Raleway:wght@500&display=swap" rel="stylesheet" />

    <title>Template B Catalogo</title>

</head>
<body>
   
    <style>
        body{
            background:url(https://cdn.pixabay.com/photo/2017/08/02/14/26/winter-landscape-2571788_960_720.jpg);
            background-size:cover;
        }
        .card {
            border-radius: 0;
            box-shadow: 5px 5px 15px rgb(76, 148, 245);
            transition: all 0.3s ease-in;
            -webkit-transition: all 0.3s ease-in;
            -moz-transition: all 0.3s ease-in;
        }
            .card:hover {
                background: rgb(128, 178, 247);
                color: #fff;
                border-radius: 5px;
                border: none;
                box-shadow: 5px 5px 10px #9E9E9E;
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
        <br />
         <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-md-offset-2">
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <asp:Label Text="Ingrese un titulo y presione enter para buscar" runat="server" Style="margin-left: 3%" />
                                <div class="container d-flex">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder=" Buscar..." MaxLength="50" />
                                    <a href="#" class="btn alert-info">Todas</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1 class="display-4" style="text-align: center;"><%=RellenoVariable.Titulo_Catalogo %></h1>
            </div>
        </div>
        <br />
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col md-5 col-sm-4">
                        <div class="card text-center" style="margin-bottom: 40px;">
                            <img src="<%=RellenoVariable.url_Imagen_Catalogo %>" class="card-img-top" alt="No se encontro la imagen" />
                            <div class="card-body">
                                <h5 class="card-title"><%=RellenoVariable.Titulo_Card_Catalogo %></h5>
                                <p class="card-text"><%=RellenoVariable.Descripcion_Catalogo %></p>
                                <p>Precio: <%=RellenoVariable.Precio_Catalogo %>$</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
