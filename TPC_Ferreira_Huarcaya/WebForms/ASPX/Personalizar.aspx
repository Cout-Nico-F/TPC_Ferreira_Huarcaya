<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personalizar.aspx.cs" Inherits="WebForms.ASPX.Personalizar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <title></title>
</head>
<body>
    <style> 
        /*
        #all{
            display: grid;
             grid-template-columns: 20% 20% 20% 20% 20%;
             grid-template-rows: 20% 20% 20% 20% 20%;
        }
        .other{
            grid-row-start:6;
            grid-column-start:4;
             grid-column-start:9;
        }
         .funciones{
            grid-row-start:30;
            grid-column-start:4;
             grid-column-end:7;
        }
         .Paginas{
             grid-row-start:5;
            grid-column-start:4;
             grid-column-end:7;
         }
         .Secciones{
              grid-row-start:12;
              grid-column-start:4;
              grid-column-end:7;
         }*/
        .grid .container_01 {
            display: grid;
            grid-template-columns: 20% 20%;
            grid-template-rows: auto;
            grid-gap: 0.2em;
        }
        div{
            background: #ecf0f1;
            padding: 0.5em;
        }
      
    </style>

    <form id="form1" runat="server">
        <!--
        <div id="all">
            <div class="other">
                 <asp:DropDownList ID="ddl_Colores" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
            </div>
            <div class="other">
            </div>
            <div class="other">
                
            </div>
            <div class="other">
                <asp:DropDownList ID="ddl_Categorias" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
               
            </div>
            <div class="other">
                 <asp:DropDownList ID="ddl_Estilos" runat="server" CssClass="btn btn-secondary dropdown-toggle"></asp:DropDownList>
            </div>
            <div class="funciones">
                 
               
            </div>
            <div class="Paginas">
                 
                
            </div>
            <div class="Secciones">
               
            </div>
        </div> -->

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
