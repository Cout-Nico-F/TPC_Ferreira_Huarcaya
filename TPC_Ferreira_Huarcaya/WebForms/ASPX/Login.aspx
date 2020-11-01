<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebForms.ASPX.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="modal-dialog text-center border-0">
        <div class="col-sm-12">
            <div class="modal-content">
                <div class="col-12">
                 <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRW6X2lldt_gy2tcbXCKBbKWNVBpH-f1Mcjsw&usqp=CAU" alt="Alternate Text" /> 
                </div>
                <form class="col-8">
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Correo Electronico" />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Contraseña"/>
                    </div>
                   <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  Ingresar</button>
                </form>
               <div class="col-12">
                   <label>No tiene una cuenta?</label>
                   <a href="#">Crear cuenta</a>
               </div>
                 <div class="col-12">
                   <label>Olvido su contraseña</label>
                   <a href="#">Recuperar contraseña</a>
               </div>
            </div>
        </div>
    </div>

</asp:Content>
