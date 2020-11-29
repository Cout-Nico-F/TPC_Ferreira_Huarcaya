<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Template_B_Login.aspx.cs" Inherits="WebForms.Templates_Prefabricados.Template_B_Login" %>

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

    <title>Template B Login</title>

</head>
<body>
    <style>
        body {
            background-image: url(https://www.xtrafondos.com/wallpapers/resized/montanas-en-bosque-al-atardecer-3315.jpg?s=large);
            background-size: cover;
        }

        .col-12 {
            padding: 1em;
        }

            .col-12 img {
                margin-top: -80px;
                margin-bottom: 40px;
                background-color: transparent;
            }

        .btn btn-primary {
            resize: vertical
        }

        .form-control {
            padding: 20px;
            width: 400px;
            margin-left: 30px;
        }

        .btn-Ingresar {
            width: 100px;
            height: 40px;
            margin-left: 175px;
            background-color: rgb(107, 155, 243);
            border: none;
            color: white;
            margin-top: 10px;
        }

            .btn-Ingresar:hover {
                background-color: rgb(73, 129, 236);
            }
    </style>

    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
              <a class="navbar-brand" href="#">
             <img src="<%=RellenoVariable.Url_Logo_Pagina %>" width="30" height="30" class="d-inline-block align-top" alt="" style="background-color:transparent">   <%=RellenoVariable.Nombre_Pagina %></a>
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
        <br />
        <br />
        <br />
           <div>
                <div class="modal-dialog text-center">
                    <div class="col-sm-12">
                        <div class="modal-content">
                            <div class="col-12">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt-F5GQg8qB2fWquF1ltQvAT2Z8Dv5pJLb9w&usqp=CAU" alt="Alternate Text" style="background:transparent"/>
                            </div>
                            <form class="col-12">
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="txtNombreUsuario" Placeholder="NombreUsuario" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="txtPass" Placeholder="Contraseña" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                                <asp:Button Text="Ingresar" runat="server" CssClass="btn-Ingresar" />
                                <br />
                            </form>
                            <div class="col-12">
                                <label>No tiene una cuenta?</label>
                                <a href="#">Crear cuenta</a>
                                <br />
                                <label>Olvido su contraseña</label>
                                <a href="#">Recuperar contraseña</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
    </form>
    </form>
</body>
</html>
