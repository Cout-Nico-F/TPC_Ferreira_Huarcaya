<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="FuncionalidadesAM.aspx.cs" Inherits="WebForms.ASPX.AltasModificaciones.FuncionalidadesAM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <a href="../PersonalizarUsuario.aspx">Volver</a>

    <form>
        <div class="form-group">
            <label for="input_Descripcion">Descripcion</label>
            <asp:TextBox runat="server" ID="txtBox_Descripcion" Placeholder=""> </asp:TextBox> 
            <!--<input runat="server" type="text" class="form-control" id="input_Descripcion" aria-describedby="DescHelp">-->
            <small id="DescHelp" class="form-text text-muted">Ingrese la descripcion de la funcionalidad.</small>
        </div>
        <div class="form-group">
            <label for="input_Costo">Costo</label>
            <asp:TextBox runat="server" ID="txtBox_Costo" TextMode="Number"/> 
            <!--<input runat="server" type="text" class="form-control" id="input_Costo"> -->
            <small id="CostoHelp" class="form-text text-muted">Ingrese el costo de la funcionalidad.</small>
        </div>
        <asp:Button Text="OK" runat="server" name="btn_FuncionalidadAM_OK" OnClick="btn_FuncionalidadAM_OK_Click"/>
    </form>

</asp:Content>
