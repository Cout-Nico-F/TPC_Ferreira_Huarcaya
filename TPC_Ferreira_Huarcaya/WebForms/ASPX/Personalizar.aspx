<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personalizar.aspx.cs" Inherits="WebForms.ASPX.Personalizar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
            </div>
            <div class="d-flex justify-content-center">
                <asp:DropDownList ID="ddl_Colores" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                <asp:DropDownList ID="ddl_Elementos" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                <asp:DropDownList ID="ddl_DispElementos" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                <asp:DropDownList ID="ddl_Categorias" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                <asp:DropDownList ID="ddl_Estilos" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                <asp:DropDownList ID="ddl_Funcionalidades" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                <asp:DropDownList ID="ddl_Paginas" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                <asp:DropDownList ID="ddl_Secciones" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
            </div>
        </div>
    </form>
</body>
</html>
