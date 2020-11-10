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

        body{
            overflow: hidden;
            font-weight: 300;
            color:var(--primary);
        }

        #sidebar-container{
            min-height: 300vh;
           
        }
        .bg-primary {background-color: var(--primary) !important} /*Se que important no se usa*/
        #sidebar-container logo{
            padding: .875rem 1.25rem;
        }
        #sidebar-container .menu{
            width: 18rem;
            background-color:black;
        }
        .space{
            
        }

    </style>
        
       
    <form id="form1" runat="server">

        <div class="d-flex">
            <div id="sidebar-container" class="bg-primary">
                <div class="logo">
                    <h4 class="text-light font-weight-bold">   Menu de Opciones</h4>
                </div>
                <div class="menu">
                     <asp:DropDownList ID="ddl_Funcionalidades" runat="server" CssClass="btn btn-secondary dropdown-toggle d-block space"></asp:DropDownList>
                     <asp:DropDownList ID="ddl_Paginas" runat="server" CssClass="btn btn-secondary dropdown-toggle d-block"></asp:DropDownList>
                    <!--<a href="#" class="d-block p-3">Hola</a>
                    <a href="#" class="d-block p-3">Hola</a>
                    <a href="#" class="d-block p-3">Hola</a>
                    <a href="#" class="d-block p-3">Hola</a> -->
                </div>
            </div>
        </div>
        
        <!--<div class="grid">
            <div class="container">
                <div>
                   
                </div>
                <div>
                    
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
        </div> -->    
    </form>

</body>

</html>
