<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalizarUsuario.aspx.cs" Inherits="WebForms.ASPX.PersonalizarPaginas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Bootstrap 4 CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!-- Estilos CSS -->
    <link href="../CSS/Estilos_PersonalizarUsuario.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Architects+Daughter&family=Pacifico&display=swap" rel="stylesheet" />

    <title>Personalizacion</title>

</head>
<body>

   <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top nav-toggleable-sm">
    <a class="navbar-brand" href="#">
        <img src="https://localhost:44344/Imagenes/icono_ecommerce.jpg" width="30" height="30" class="d-inline-block align-top" alt="" style="background-color: transparent">
        <!-- No puedo hacer transparente el fonde de la imagen -->
        FerreAlo</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- el ID anterior era : navbarNavAltMarkup -->
        <div class="navbar-nav mr-auto ml-auto text-center">
            <a class="nav-link" href="Home.aspx">Home</a>
            <a class="nav-link" href="Catalogo.aspx">Catalogo</a>
            <a class="nav-link" href="Info.aspx">Informacion</a>
            <a class="nav-link" href="PersonalizarUsuario.aspx">Crea tu propia Pagina Web</a>
        </div>
        <div>
            <div class="boton-nav-user">

                <%if (!(Session["usersession"] != null))
                    {%>
                         <a href="InicioSesion.aspx" style="color: white; margin-right: 30px;"><i class="fas fa-user"></i> Log-In</a>
                <%} %>
                <a href="InicioSesion.aspx?LogOut=1" style="color: white; margin-right: 30px;"><i class="fas fa-sign-out-alt"></i> Log-Out</a>
                <a href="EditarDatosPersonales.aspx" style="color: white; margin-right: 30px;"><i class="fas fa-info-circle"></i> Editar info</a>
                <a href="RecursosAdmin.aspx" style="color: white;"><i class="fas fa-cogs"></i> Panel Admin</a>
                <%if (Session["usersession"] != null)
                    {

                        Modelo.Usuario usuario = (Modelo.Usuario)Session["usersession"];
                        %>
                        <label style="color:aliceblue; font-weight:bold; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"> Logeado como: <%= usuario.NombreUsuario %> </label>
                      <%if (usuario.Id_Acceso == 3)//verificar el tipo de acceso para poder ver la pagina.
                        {%>
                
                <%}
                } %>
            </div>
        </div>
    </div>
</nav>

    <style>
        .container-paginas {
            min-height: 100vh;
        }

        body div .fondo1 {
            background-color: antiquewhite;
        }

        body div .fondo2 {
            background-color: lightcyan;
        }

        body div .fondo3 {
            background-color: white;
        }

        .container-estilos {
            min-height: 100vh;
        }

        .container-funcionalidades {
            min-height: 100vh;
        }

        h1 {
            font-family: 'Pacifico', cursive;
            font-size: 55px;
        }

        p {
            font-family: 'Architects Daughter', cursive;
            font-size: 30px;
        }
    </style>

    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" />
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div class="fondo1">
                    <div class="container container-paginas">
                        <div style="text-align: center">
                            <br />
                            <%if (Session["usersession"] != null)
                    {
                        Usuario = (Modelo.Usuario)Session["usersession"];

                        if (Usuario.Id_Acceso == 3)//verificar el tipo de acceso para poder ver la pagina.
                        {%>



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
                            <td>
                                <asp:Button ID="btn_Pagina_Modificacion" Text="Modificacion de Pagina elegida" runat="server" CssClass="btn btn-outline-warning" OnClick="btn_Pagina_Modificacion_Click" /></td>
                            <td>
                                <asp:Button ID="btn_Estilo_Modificacion" Text="Modificacion de estilo elegido" runat="server" CssClass="btn btn-outline-warning" OnClick="btn_Estilo_Modificacion_Click" /></td>
                            <td>
                                <asp:Button ID="btn_Funcionalidad_Modificacion" Text="Modificacion de funcionalidad elegida" runat="server" CssClass="btn btn-outline-warning" OnClick="btn_Funcionalidad_Modificacion_Click" /></td>
                        </tr>
                        <tr>
                            <th scope="row">Eliminar</th>
                            <td>
                                <asp:Button ID="btn_Pagina_Baja" Text="Baja de Pagina elegida" runat="server" CssClass="btn btn-outline-danger" OnClick="btn_Pagina_Baja_Click" /></td>
                            <td>
                                <asp:Button ID="btn_Estilo_Baja" Text="Baja de Estilo elegido" runat="server" CssClass="btn btn-outline-danger" OnClick="btn_Estilo_Baja_Click" /></td>
                            <td>
                                <asp:Button ID="bnt_Funcionalidad_Baja" Text="Baja de Funcionalidad elegida" runat="server" CssClass="btn btn-outline-danger" OnClick="bnt_Funcionalidad_Baja_Click" /></td>
                        </tr>
                    </tbody>
                </table>
                <%}
                } %>
                            <br />
                            <h1>Paso 1:</h1>
                            <h1>Paginas</h1>
                            <p>Elija las paginas que conformaran su Web</p>
                            <asp:DropDownList runat="server" ID="ddl_Paginas" AutoPostBack="true" OnSelectedIndexChanged="ddl_Paginas_SelectedIndexChanged" CssClass="btn btn-dark"></asp:DropDownList>
                            <asp:Button Text="Agregar" runat="server" ID="btn_AgregarPagina" CssClass="btn btn-info" OnClick="btn_AgregarPagina_Click" AutoPostBack="true" />
                            <%if (PaginaSeleccionada != null)
                                {%>
                            <br />
                            <br />
                            <img src="<%=PaginaSeleccionada.Url_Imagen%>" alt="Imagen Pagina no encontrada" style="height: 50%; width: 80%;" />
                            <% }%>
                            <div class="float-md-right">
                                <%if (!(ListaFuncionalidadesAgregadas == null))
                                    {%>
                                <table id="Paginas-Agregadas" class="table table-striped table-dark">
                                    <thead>
                                        <tr>
                                            <th>Paginas</th>
                                            <th>Accion</th>
                                        </tr>
                                    </thead>

                                    <tbody>

                                        <%foreach (var pag in ListaPaginasAgregadas)
                                            {%>
                                        <tr>
                                            <td><%=pag.Descripcion%></td>
                                            <td>
                                                <a href="PersonalizarUsuario.aspx?IdRemoverPagina=<%=pag.ID%>" class="btn btn-outline-info">Remover pagina</a>
                                            </td>
                                        </tr>
                                        <%} %>
                                        <%}%>
                                    </tbody>
                                </table>
                                <div>
                                    <a href="#pag2" class="btn btn-primary" role="button" style="box-shadow: 5px 5px 8px #999; border-radius: 40px;">Seguir</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="fondo2" id="pag2">
                    <div class="container container-estilos">
                        <div style="text-align: center">
                            <br />
                            <br />
                            <h1>Paso 2:</h1>
                            <h1>Estilo</h1>
                            <p>Elija el estilo que quiera que tenga su web</p>
                            <asp:DropDownList runat="server" ID="ddl_Estilos" AutoPostBack="true" OnSelectedIndexChanged="ddl_Estilos_SelectedIndexChanged" CssClass="btn btn-dark"></asp:DropDownList>

                            <%if (EstiloSeleccionado != null)
                                {%>
                            <br />
                            <br />
                            <img src="<%=EstiloSeleccionado.Url_Imagen%>" alt="Imagen Estilo no encontrada" style="height: 50%; width: 80%;" />
                            <% }%>
                        </div>
                        <div>
                            <a href="#pag3" class="btn btn-primary" role="button" style="box-shadow: 5px 5px 8px #999; border-radius: 40px;">Seguir</a>
                        </div>
                    </div>
                </div>

                <div class="fondo3" id="pag3">
                    <div class="container container-funcionalidades">
                        <div style="text-align: center">
                            <br />
                            <br />
                            <h1>Paso 3:</h1>
                            <h1>Funcionalidades</h1>
                            <p>Elija una o mas funcionalidades para su Web</p>
                            <asp:DropDownList runat="server" ID="ddl_Funcionalidades" CssClass="btn btn-dark"></asp:DropDownList>
                            <asp:Button Text="Agregar" runat="server" ID="btn_Agregar_Funcionalidad" CssClass="btn btn-info" OnClick="btn_Agregar_Funcionalidad_Click" AutoPostBack="true" />
                        </div>
                        <br />
                        <br />
                        <table id="Funcionalidades-Agregadas" class="table table-striped table-dark">
                            <thead>
                                <tr>
                                    <th>Funcionalidades</th>
                                    <th>Costo</th>
                                    <th>Accion</th>
                                </tr>
                            </thead>

                            <%if (!(ListaFuncionalidadesAgregadas == null))
                                {%>
                            <%foreach (var item in ListaFuncionalidadesAgregadas)
                                { %>
                            <tbody>
                                <tr>
                                    <td><%=item.Descripcion%></td>
                                    <td>$ <%=item.Costo %></td>
                                    <td>
                                        <a href="PersonalizarUsuario.aspx?IdRemoverFuncionalidad=<%=item.Id%>" class="btn btn-outline-info">Remover funcionalidad</a>
                                    </td>
                                </tr>
                                <%} %>
                            </tbody>

                        </table>
                        <%}%>
                        <div>
                            <!--<a href="ConfirmarPedidoPagWeb.aspx" class="btn btn-info" style="box-shadow:5px 5px 8px #999;border-radius:40px;">Paso Final</a> -->
                        </div>
                        <br />
                        <br />
                        <asp:Button ID="btn_Solicitar" Text="Solicitar Pagina" runat="server" OnClick="btn_Solicitar_Click" CssClass="btn btn-secondary btn-lg btn-block" />
                    </div>
                </div>



                <br />



            </ContentTemplate>
        </asp:UpdatePanel>


        <script>
            window.onload = function () {
                      var pos = window.name || 10;
                      window.scrollTo(10, pos);
                  }
                  window.onunload = function () {
                      window.name = self.pageYOffset || (document.documentElement.scrollTop + document.body.scrollTop);
                  }
        </script>

    </form >
</body>
</html>

