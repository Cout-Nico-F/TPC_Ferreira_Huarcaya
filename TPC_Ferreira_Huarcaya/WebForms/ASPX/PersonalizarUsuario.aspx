<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalizarUsuario.aspx.cs" Inherits="WebForms.ASPX.PersonalizarPaginas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!-- Bootstrap 4 CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
     <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!-- Estilos CSS -->
   <link href="../CSS/Estilos_PersonalizarUsuario.css" type="text/css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet" />

    <title>Paginas</title>

</head>
<body>
       
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
        <a class="navbar-brand" href="#">
             <img src="../Imagenes/icono_ecommerce.jpg" width="30" height="30" class="d-inline-block align-top" alt="icono_E-commerce" style="background-color:transparent"> <!-- No puedo hacer transparente el fonde de la imagen -->
            FerreAlo</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent"><!-- el ID anterior era : navbarNavAltMarkup -->
        <div class="navbar-nav mr-auto ml-auto text-center">
            <a class="nav-link" href="Home.aspx">Home</a>
            <a class="nav-link" href="Catalogo.aspx">Catalogo</a>
            <a class="nav-link" href="Info.aspx">Informacion</a>
            <a class="nav-link" href="PersonalizarUsuario.aspx">Crea tu propia Pagina Web</a>
        </div>
        <div>
            <div class="boton-nav-user">
                <a href="InicioSesion.aspx" style="color:white; margin-right:30px;"><i class="fas fa-user"></i></a>
                <a href="EditarDatosPersonales.aspx" style="color:white; margin-right:30px;"><i class="fas fa-info-circle"></i></a>
                <!-- Carrito no lo vamos a usar por lo menos aca -->
                <!--<a href="CarritoCompra.aspx" style="color:white; margin-right:80px;"><i class="fas fa-shopping-cart"></i></a> -->
            </div>
        </div>
    </div>
    </nav>

    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" />    
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                     <div style="text-align: center">
                    <h1>Paginas</h1>
                    <p>Elija la cantidad de paginas que conformaran su Web</p>
                    <asp:DropDownList runat="server" ID="ddl_Paginas" AutoPostBack="true" OnSelectedIndexChanged="ddl_Paginas_SelectedIndexChanged"></asp:DropDownList>
                    <asp:Button Text="Agregar" runat="server" id="btn_AgregarPagina" OnClick="btn_AgregarPagina_Click" AutoPostBack="true" />
                     <%if(!(ListaPaginasSeleccion == null))
                        {%>
                            <%foreach (var pag in ListaPaginasSeleccion)
                                { %>
                                
                                   <img src="<%=pag.Url_Imagen%>" alt="Imagen Pagina no encontrada" class="rounded float-left"/>
                                   
                                  
                                <% }%>
                                 
                       <% } %>
                </div>               
                <div style="text-align: center">
                    <h1>Estilo</h1>
                    <p>Elija el estilo que quiera que tenga su web</p>
                    <asp:DropDownList runat="server" ID="ddl_Estilos" AutoPostBack="true" OnSelectedIndexChanged="ddl_Estilos_SelectedIndexChanged"></asp:DropDownList>
                        
                    <%if(!(ListaEstilos == null))
                        {%>
                            <%foreach (var est in ListaEstilos)
                                { %>
                                
                                   <img src="<%=est.Url_Imagen%>" alt="Imagen Estilo no encontrada" class="rounded float-left" />
                                   
                                  
                                <% }%>
                                 
                       <% } %>
                </div>
                <div style="text-align: center">
                    <h1>Funcionalidades</h1>
                    <p>Elija un o mas funcionalidades para su Web</p>
                    <asp:DropDownList runat="server" ID="ddl_Funcionalidades"></asp:DropDownList>
                    <asp:Button Text="Agregar" runat="server" ID="btn_Agregar" OnClick="btn_Agregar_Click" AutoPostBack="true"/>
                </div>

                <%if (!(ListaFuncionalidadesAgregadas == null))
                  {%>
                <table>
                    <thead>
                        <tr>
                            <th>Funcionalidades</th>
                            <th>Costo</th>
                            <th>Descartar Funcionalidad</th>
                        </tr>
                    </thead>
                    
                    <%foreach (var item in ListaFuncionalidadesAgregadas)
                        { %>
                    <tbody>
                        <tr>
                            <td><%=item.Descripcion%></td>
                            <td>$ <%=item.Costo %></td>
                            <td><asp:Button Text="Baja" runat="server" ID="btn_Remover_Funcionalidad" OnClick="btn_Remover_Funcionalidad_Click" /></td>

                            <%foreach (var pag in ListaPaginasAgregadas)
                                {%>
                            <td><%=pag.Descripcion%></td>
                            <!--Me faltaba el igual y me decia que falta el punto y coma -->
                            <%} %>
                        </tr>
                     <%} %>
                    </tbody>
                  
                </table>
                <%}%>
                <table>
                    <tr>
                        <th>Paginas</th>
                    </tr>
                   
                </table>

                <br />
                <br />
                <br />
                <br />
                <br />
                <%if (Usuario.Id_Acceso == 3)
                    { %>
                    <table class="table table-striped table-dark">
                        <thead>
                            <tr>
                                <th scope="col">Opciones</th>
                                <th scope="col">Paginas</th>
                                <th scope="col">Estilos</th>
                                <th scope="col">Funcionalidades</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">Agregar</th>
                                <td><a href="AltasModificaciones/PaginasAM.aspx" class="btn btn-outline-success">Nueva Pagina</a></td>
                                <td><a href="AltasModificaciones/EstilosAM.aspx" class="btn btn-outline-success">Nuevo Estilo</a></td>
                                <td><a href="AltasModificaciones/FuncionalidadesAM.aspx" class="btn btn-outline-success">Nueva Funcionalidad</a></td>
                            </tr>


                            <tr>
                                <th scope="row">Modificar</th>
                                <td><asp:Button ID="btn_Pagina_Modificacion" Text="Modificacion Pagina elegida" runat="server" CssClass="btn btn-outline-warning" OnClick="btn_Pagina_Modificacion_Click" /></td>
                                <td><asp:Button ID="btn_Estilo_Modificacion" Text="btn_Estilo_Modificacion" runat="server" CssClass="btn btn-outline-warning" Onclick="btn_Estilo_Modificacion_Click"/></td>
                                <td><asp:Button ID="btn_Funcionalidad_Modificacion" Text="btn_Funcionalidad_Modificacion" runat="server" CssClass="btn btn-outline-warning" Onclick="btn_Funcionalidad_Modificacion_Click"/></td>
                            </tr>
                            <tr>
                                <th scope="row">Eliminar</th>
                                <td><asp:Button ID="btn_Pagina_Baja" Text="Baja de Pagina elegida" runat="server" cssClass="btn btn-outline-danger" OnClick="btn_Pagina_Baja_Click" /></td>
                                <td><asp:Button ID="btn_Estilo_Baja" Text="Baja de Estilo elegido" runat="server" cssClass="btn btn-outline-danger" OnClick="btn_Estilo_Baja_Click" /></td>
                                <td><asp:Button ID="bnt_Funcionalidad_Baja" Text="Baja de Funcionalidad elegida" runat="server" cssClass="btn btn-outline-danger" OnClick="bnt_Funcionalidad_Baja_Click" /></td>
                            </tr>
                        </tbody>
                </table>

                <%} %>
                
                <br />
                <br />
                <br />
                <br />

            </ContentTemplate>
        </asp:UpdatePanel>
       
       
       

    </form>
</body>
</html>
<!-- Tablas que borre de la base de datos
    relacion colores
    colores x relacioncolores
    colores
    categorias
    disposicion elementos -->
