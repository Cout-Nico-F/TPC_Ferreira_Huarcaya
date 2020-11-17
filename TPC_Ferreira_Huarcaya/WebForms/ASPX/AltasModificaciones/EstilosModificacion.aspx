﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="EstilosModificacion.aspx.cs" Inherits="WebForms.ASPX.AltasModificaciones.EstilosModificacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <a href="../Personalizar.aspx">Volver</a>

    <form>
        <div class="form-group">
            <label for="txtBox_Descripcion">Descripcion</label>
            <asp:TextBox runat="server" ID="txtBox_Descripcion" Placeholder=""> </asp:TextBox> 
            <small id="DescHelp" class="form-text text-muted">Ingrese la descripcion del estilo.</small>
            <!--Temporal hasta lograr la subida de imagen como mostro maxi en la ultima clase -->
            <label for="txtBox_Url_Imagen">Url_Imagen</label>
            <asp:TextBox runat="server" ID="txtBox_Url_Imagen" Placeholder=""> </asp:TextBox> 
            <small id="UrlHelp" class="form-text text-muted">Ingrese la URL de la imagen del estilo.(proximamente posibilidad de subir un archivo imagen)</small>
            <!-- -->
        </div>
        <asp:Button Text="OK" runat="server" name="btn_EstiloAM_OK" OnClick="btn_Cambios_Click"/>
    </form>

</asp:Content>
