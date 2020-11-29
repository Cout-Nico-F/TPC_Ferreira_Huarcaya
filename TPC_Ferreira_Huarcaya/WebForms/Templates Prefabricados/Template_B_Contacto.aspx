<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Template_B_Contacto.aspx.cs" Inherits="WebForms.Templates_Prefabricados.Template_B_Contacto" %>

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

    <title>Template B Contacto</title>

</head>
<body>

    <style>

        body {
            background-color:slategray;
        }
        .contact-form {
            background: #fff;
            margin-top: 10%;
            margin-bottom: 5%;
            width: 70%;
        }

            .contact-form .form-control {
                border-radius: 1rem;
            }

        .contact-image {
            text-align: center;
        }

            .contact-image img {
                border-radius: 6rem;
                width: 15%;
                margin-top: -3%;
                transform: rotate(29deg);
            }

        .contact-form form {
            padding: 14%;
        }

            .contact-form form .row {
                margin-bottom: -7%;
            }

        .contact-form h3 {
            margin-bottom: 8%;
            margin-top: -10%;
            text-align: center;
            color: #0062cc;
        }

        .contact-form .btnContact {
            width: 50%;
            border: none;
            border-radius: 1rem;
            padding: 1.5%;
            background: #dc3545;
            font-weight: 600;
            color: #fff;
            cursor: pointer;
        }

        .btnContactSubmit {
            width: 50%;
            border-radius: 1rem;
            padding: 1.5%;
            color: #fff;
            background-color: #0062cc;
            border: none;
            cursor: pointer;
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
   <div class="container contact-form">
       <div class="container">
            <div class="contact-image">
                <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="Imagen_Cohete"/>
            </div>     
       </div>
            <form method="post">
               <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Textbox Text="" runat="server" cssClass="form-control" placeholder="Tu nombre"/>
                        </div>
                        <div class="form-group">
                             <asp:Textbox Text="" runat="server" cssClass="form-control" placeholder="Tu mail"/>
                        </div>
                        <div class="form-group">
                            <asp:Textbox Text="" runat="server" cssClass="form-control" placeholder="Tu numero de celular"/>
                        </div>
                        <br />
                        <div class="form-group">
                            <asp:Button Text="Enviar Mensaje" runat="server" cssClass="btnContact"/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:textbox  cssClass="form-control" placeholder="Tu Mensaje " style="width: 100%; height: 150px;" runat="server" />
                        </div>
                    </div>
                </div>
            </form>
            </div>
         </form>
</body>
</html>
