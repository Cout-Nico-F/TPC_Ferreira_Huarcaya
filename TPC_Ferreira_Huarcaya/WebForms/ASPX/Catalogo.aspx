<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="WebForms.ASPX.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Hola bienvenido</h1>
            <p class="lead">Estamos trabajando.... <i class="fas fa-exclamation-triangle"></i></p>
        </div>
    </div>
    <!--Se que a Maxi no le gusta el uso de br(en un vivo le pregunte) pero no se me ocurre otra forma -->
    <br />
    <br />
    <section id="facilities">
        <div class="container">
            <div class="row">
                <div class="col md-5 col-sm-4">
                    <div class="card text-center">
                        <img src="../Imagenes/Ejemplo1.png" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title">Ejemplo 01</h5>
                            <p class="card-text">Aca va una descripcion de lo que vamos a encontrar</p>
                            <button type="button" class="btn btn-info btn-lg btn-block">Vista Previa</button>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Solicitar</button>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Personalizar</button>
                        </div>
                    </div>
                </div>
                <div class="col md-1 col-sm-4">
                    <div class="card text-center">
                        <img src="../Imagenes/Ejemplo2.png" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title">Ejemplo 02</h5>
                            <p class="card-text">Aca va una descripcion de lo que vamos a encontrar</p>
                            <button type="button" class="btn btn-info btn-lg btn-block">Vista Previa</button>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Solicitar</button>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Personalizar</button>
                        </div>
                    </div>
                </div>
                 <div class="col md-2 col-sm-4">
                    <div class="card text-center">
                        <img src="../Imagenes/Ejemplo3.png" class="card-img-top" alt="No se encontro la imagen" />
                        <div class="card-body">
                            <h5 class="card-title">Ejemplo 03</h5>
                            <p class="card-text">Aca va una descripcion de lo que vamos a encontrar</p>
                            <button type="button" class="btn btn-info btn-lg btn-block">Vista Previa</button>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Personalizar</button>
                            <button type="button" class="btn btn-secondary btn-lg btn-block">Personalizar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   

</asp:Content>
