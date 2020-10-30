<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebForms.ASPX.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />

    <title></title>
</head>

<body style="background-image:url(https://www.xtrafondos.com/wallpaper/3000x2002/3315-montanas-en-bosque-al-atardecer.html)">
    <!-- <form id="form1" runat="server">
        <div>
        </div>
    </form> -->

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

    </div>

     <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
