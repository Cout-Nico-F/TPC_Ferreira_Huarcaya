<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="WebForms.ASPX.InicioSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
     <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!--CSS Estilos -->
    <link href="../CSS/Estilos_InicioSesion.css" rel="stylesheet" />

    <title>Iniciar Sesion</title>

</head>
<body>

    <form id="form1" runat="server">

            <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
                <a class="navbar-brand" href="#">
                    <img src="../Imagenes/icono_ecommerce.png" width="30" height="30" class="d-inline-block align-top" alt="Imagen Carrito Compra" style="background-color: rgba(255, 0, 0, 0.5);"/>
                    FerreAlo</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="navbar-nav mr-auto ml-auto text-center">
                        <a class="nav-link" href="Home.aspx">Home</a>
                        <a class="nav-link" href="Catalogo.aspx">Catalogo</a>
                        <a class="nav-link" href="Info.aspx">Informacion</a>
                    </div>
                </div>
            </nav>

            <br />
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
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRW6X2lldt_gy2tcbXCKBbKWNVBpH-f1Mcjsw&usqp=CAU" alt="Alternate Text" />
                            </div>
                            <form class="col-12">
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="txtNombreUsuario" Placeholder="NombreUsuario" CssClass="form-control"></asp:TextBox>
                                    <asp:Label Text="" runat="server" ID="lblNombreUsuario" />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="txtPass" Placeholder="Contraseña" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <asp:Label Text="" runat="server" ID="lblContrasenia" />
                                </div>
                                <asp:Button Text="Ingresar" runat="server" CssClass="btn-Ingresar" ID="btn_Ingresar" OnClick="btn_Ingresar_Click" />
                                <br />
                                <asp:Label Text="" runat="server" id="lbl_Mensaje"/>
                            </form>
                            <div class="col-12">
                                <label>No tiene una cuenta?</label>
                                <a href="CrearCuenta.aspx">Crear cuenta</a>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
    </form>

   
</body>
</html>
