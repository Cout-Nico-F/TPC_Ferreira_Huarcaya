<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personalizar.aspx.cs" Inherits="WebForms.ASPX.Personalizar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Bootstrap 4 CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <!-- Estilos CSS -->
    <link href="Estilos_Personalizar.css" rel="stylesheet" />

    <title>Personalizacion de Paginas</title>

</head>

<body>
    
    <style>

        .grid .container {
            display: grid;
            grid-template-columns: 20% 20%;
            grid-template-rows: auto;
            grid-gap: 1em;
        }

        div {
            background: #ecf0f1;
            padding: 1.5em;
        }

    </style>

    <form id="form1" runat="server">

        <div class="grid">
            <div class="container">
                <div>
                    <asp:DropDownList ID="ddl_Funcionalidades" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                </div>
                <div>
                    <asp:DropDownList ID="ddl_Paginas" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                </div>
                <div>
                    <asp:DropDownList ID="ddl_Secciones" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                </div>
            </div>
            <div class="container">
                <div>
                     <asp:DropDownList ID="ddl_Elementos" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                </div>
                <div>
                    <asp:DropDownList ID="ddl_DispElementos" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
                </div>
            </div>
        </div>       
    </form>

</body>

</html>
