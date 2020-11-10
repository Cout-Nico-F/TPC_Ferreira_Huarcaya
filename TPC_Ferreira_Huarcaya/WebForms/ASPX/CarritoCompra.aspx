<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarritoCompra.aspx.cs" Inherits="WebForms.ASPX.CarritoCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"/>
     <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    
    <title>Carrito de Compras</title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <a href="javascript:history.back()" class="btn btn-dark">Volver</a>
            </div>
            
            <%foreach (var item in listaCarrito)
                {
                    if (item != null)
                    {%>
                        <div class="container d-flex flex">
                            <div class="jumbotron-fluid w-50">
                                <h3><%=item.Titulo %></h3>
                                <p><%=item.Descripcion %></p>
                                <hr />
                                <a href="CarritoCompra.aspx?listaEliminar=<%=item.ID %>" role="button"><i class="fas fa-trash"></i></a>
                            </div>
                        </div>
                    <%} %>
            <%} %>
        </div>
         
    </form>
</body>
</html>
