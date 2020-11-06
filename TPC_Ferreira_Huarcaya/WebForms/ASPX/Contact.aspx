<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebForms.ASPX.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!-- Compiled and minified CSS -->
    <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" /> -->
    <!--CDN BOOTSTRAP 4 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <!-- Estilos CSS -->
    <link href="../CSS/Estilos_Contact.css" rel="stylesheet" />

    <title></title>
</head>

<body>
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="section-title">Contact Us</h2>
                    <p class="section-description">__________  __________   ____________  ________   _____________   __________   ____________</p>
                </div>
                <div class="col-md-12 col-md-offset-2">
                    <form id="contact" method="post" class="form" role="form">
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <input class="form-control" id="name" name="name" placeholder="Nombre" type="text" required/>
                            </div>
                             <div class="col-md-6 form-group">
                                <input class="form-control" id="email" name="email" placeholder="Correo Electronico" type="email" required/>
                            </div>
                            <div class="col-md-12 form-group">
                                <input class="form-control" id="cel" name="telephone" placeholder="Celular (Opcional)" type="text" required/>
                            </div>
                        </div>
                        <textarea class="form-control" id="message" name="message" placeholder="Mensaje" rows="5"></textarea>
                        <br />
                        <div class="col-md-12 form-group">
                            <asp:Button CssClass="btn btn-primary" Text="Enviar" OnClick="btnCorreo_click" runat="server" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- 
    <div class="section container">

        <div class="row">

            <form class="col s12">

                <div class="row card-panel">
                    <div class="input-field col s6">
                        <input type="text" placeholder="Ingresa tu nombre" id="nombre" required="required" />
                        <label for="nombre">Nombre:</label>
                    </div>
                     <div class="input-field col s6">
                        <input type="text" placeholder="Ingresa tu apellido" id="apellido" required="required" />
                        <label for="apellido">Apellido:</label>
                    </div>
                    <div class="input-field col s12">
                        <input id="icon_telephone" type="tel" placeholder="(Codigo de area) + 1123395678 "/>
                        <label for="icon_telephone">Telephone</label>
                        <span class="helper-text" data-error="wrong" data-success="right">Opcional</span>
                    </div>
                    <div class="input-field col s12">
                        <input type="email" id="email" required="required" placeholder="example@gmail.com" />
                        <label for="email">Correo electronico:</label>
                    </div>
                    <button class="btn" type="submit">Enviar</button>

                </div>

            </form>

        </div>

    </div> -->

     <!-- Compiled and minified JavaScript -->
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script> -->
</body>
</html>
