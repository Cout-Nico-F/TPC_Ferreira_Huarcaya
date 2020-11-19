<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="PaginasAM.aspx.cs" Inherits="WebForms.ASPX.AltasModificaciones.PaginasAM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <a href="../Personalizar.aspx">Volver</a>

    <form>
        <div class="form-group">
            <label for="txtBox_Descripcion">Descripcion</label>
            <asp:TextBox runat="server" ID="txtBox_Descripcion" Placeholder=""> </asp:TextBox> 
            <small id="DescHelp" class="form-text text-muted">Ingrese la descripcion de la pagina.</small>
            <asp:Label Text="" runat="server" ID="lblDescripcion"/>
            </div>
        <div class="form-group">
            <label for="txtBox_Url_Imagen">Url_Imagen</label>
            <asp:TextBox runat="server" ID="txtBox_Url_Imagen" Placeholder=""> </asp:TextBox> 
            <small id="UrlHelp" class="form-text text-muted">Ingrese la URL de la imagen de la pagina.(proximamente posibilidad de subir un archivo imagen)</small>
            <!-- -->
        </div>
        <asp:Button Text="OK" runat="server" ID="btn_PaginaAM_OK" OnClick="Btn_PaginaAM_OK_Click"/>
    </form>


</asp:Content>
