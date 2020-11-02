﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="WebForms.ASPX.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                            <h3>Ricardo Alonso Huarcaya Sanchez</h3>
                            <h5>Tec.Univ en Programacion</h5>
                            <!-- No se que poner -->
                            <p>Desayuno, almuerzo y ceno codigo <br />
                               Mi pasion es programar y vivir de ello <br />
                              "sufre ahora y vive el resto de tu vida como un campeon"</p>
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
                    <p class="mt-3"></p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-1">
                    <div class="card">
                        <div class="card-body">
                            <!-- Aca va una foto tuya Nico -->
                            <img src="../Imagenes/user.png" alt="Imagen no encontrada" class="img-fluid rounded-circle w-50 mb-3" />
                            <h3>Meardel Peson</h3>
                            <h5>Maquetador Web</h5>
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
                <div class="col-lg-6 col-md-1">
                    <div class="card">
                        <div class="card-body">
                            <!-- Aca va una foto tuya Nico -->
                            <img src="../Imagenes/user.png" alt="Imagen no encontrada" class="img-fluid rounded-circle w-50 mb-3" />
                            <h3>Elver Galarga</h3>
                            <h5>Maquetador Web</h5>
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
              </div>
            </div>
    </section>

</asp:Content>