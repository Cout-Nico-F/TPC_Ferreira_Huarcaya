<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="WebForms.ASPX.Contacto1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                    <br />
                    <br />
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
                            <button class="btn btn-primary">Enviar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
