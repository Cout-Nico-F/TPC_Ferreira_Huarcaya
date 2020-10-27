<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="WebForms.ASPX.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Catalogo.aspx">Catalogo</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="WebPages">Otro</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Contacto.aspx">Informacion</a>
                </li>
            </ul>
             <!-- No hace falta el buscador aca -->
             <!--<form class="form-inline">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Search</button>
            </form>-->
        </div>
    </nav>

    <section id="team">
        <div class="container my-3 py-5 text-center" id="Titulo">
            <div class="row mb-5">
                <div class="col">
                    <h1>Director's</h1>
                    <p class="mt-3">
                         
                    </p>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <!-- Aca va una foto tuya Nico -->
                            <img src="../Imagenes/user.png" alt="Imagen no encontrada" class="img-fluid rounded-circle w-50 mb-3" />
                            <h3>Nicolas Ferreira</h3>
                            <h5>Tec.Univ en Programacion</h5>
                            <!--Queda vacia para que agregues una descripcion breve de lo quieras -->
                            <p></p>
                            <div class="d-flex flex-row justify-content-center">
                                <div class="p-4">
                                    <a href="#">
                                        <i class="fab fa-linkedin"></i>
                                    </a>
                                </div>
                                <div class="p-4">
                                    <a href="#">
                                        <i class="fab fa-github"></i>
                                    </a>
                                </div>
                                 <div class="p-4">
                                     <!--Opcional -->
                                    <a href="#">
                                        <i class="fab fa-whatsapp"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <!--Se que no es la mejor foto pero es la unica que tengo -->
                            <img src="../Imagenes/Alonso.jpg" alt="Imagen no encontrada" class="img-fluid rounded-circle w-50 mb-3"/>
                            <h3>Alonso Huarcaya</h3>
                            <h5>Tec.Univ en Programacion</h5>
                            <!-- No se que poner -->
                            <p></p>
                            <div class="d-flex flex-row justify-content-center">
                                <div class="p-4">
                                    <a href="https://www.linkedin.com/in/alonso-huarcaya-934300188/">
                                        <i class="fab fa-linkedin"></i>
                                    </a>
                                </div>
                                <div class="p-4">
                                     <a href="https://github.com/AlonsoHS21?tab=repositories">
                                        <i class="fab fa-github"></i>
                                    </a>
                                </div>
                                <div class="p-4">
                                     <!--Opcional -->
                                    <a href="https://api.whatsapp.com/send?phone=541123390582&text=hola,%20qué%20tal?">
                                        <i class="fab fa-whatsapp"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container my-3 py-5 text-center">
            <div class="row mb-5">
                <div class="col">
                    <h1>Team</h1>
                    <p class="mt-3">
                    </p>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
