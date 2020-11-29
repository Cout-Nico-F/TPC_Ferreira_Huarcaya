<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Template_C_Contacto.aspx.cs" Inherits="WebForms.Templates_Prefabricados.Template_C_Contacto" %>

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
    <title>Template C Contacto</title>
</head>
<body>
     <style>
        .row{
            margin-right: -100px;
            margin-left: 200px;
        }
        #boton{
            margin-left: 220px;
        }
        body{
            background-color: whitesmoke;
        }
    </style>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-link active" href="Template_C_Home.aspx">Home</a>
            <a class="nav-link" href="Template_C_Contacto.aspx">Contacto</a>
          </div>
        </div>
      </nav>
    <form id="form1" runat="server">
         <!--Section: Contact v.2-->
<section class="mb-4">
    <br><br><br>
    <!--Section heading-->
    <h2 class="h1-responsive font-weight-bold text-center my-4">Formulario de Contacto</h2>
    <!--Section description-->
    <p class="text-center w-responsive mx-auto mb-5"></p>
    <br><br><br>
    <div class="row">
        
        <!--Grid column-->
        <div class="col-md-5 mb-md-0 mb-5">
            <form id="contact-form" name="contact-form" action="mail.php" method="POST">
                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="name" name="name" class="form-control">
                            <label for="name" class="">Tu Nombre</label>
                        </div>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="email" name="email" class="form-control">
                            <label for="email" class="">Tu mail</label>
                        </div>
                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="md-form mb-0">
                            <input type="text" id="subject" name="subject" class="form-control">
                            <label for="subject" class="">Subject</label>
                        </div>
                    </div>
                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-12">

                        <div class="md-form">
                            <textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea"></textarea>
                            <label for="message">Tu mensaje</label>
                        </div>

                    </div>
                </div>
                <!--Grid row-->

            </form>

            <div class="text-center text-md-left" id="boton">
                <a class="btn btn-primary" >Send</a>
            </div>
            <div class="status"></div>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-md-3 text-center">
            <ul class="list-unstyled mb-0">
                <li><i class="fas fa-map-marker-alt fa-2x"></i>
                    <p><%=RellenoVariable.Direccion %></p>
                </li>

                <li><i class="fas fa-phone mt-4 fa-2x"></i>
                    <p><%=RellenoVariable.Telefono %></p>
                </li>

                <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                    <p><%=RellenoVariable.Email %></p>
                </li>
            </ul>
        </div>
        <!--Grid column-->

    </div>

</section>
<!--Section: Contact v.2-->
    </form>
</body>
</html>
