<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetallesPedidoPrediseniado.aspx.cs" Inherits="WebForms.ASPX.DetallesPedidoPrediseniado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <!-- Estilos CSS -->
    <link href="../CSS/Estilos_RecursosAdmin.css" rel="stylesheet" />
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!--Google Fonts -->

    <!--JS Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
    <title>Recursos Admin</title>
    <!-- JQuery CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Datatable -->
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
    <script src="http://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    
    <title>Detalles Pedidos de Paginas Prediseñadas</title>

</head>

<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h1>Detalles del pedido</h1>
        </div>
         <h2>Datos Contacto Usuario</h2>
    <table class="table table-fluid" id="DatosUsuario">
                    <thead>
                        <tr>
                            <th>Nombre y Apellido</th>
                            <th>Telefono Fijo</th>
                            <th>Telefono Movil</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%= DatosUsuario.NombreApellido %></td>
                            <td><%= DatosUsuario.TelefonoFijo%></td>
                            <td><%= DatosUsuario.TelefonoMovil %></td>
                            <td><%= DatosUsuario.Email %></td>
                        </tr>
                    </tbody>
                </table>
    <br />
    <br />
    </form>
</body>
</html>
