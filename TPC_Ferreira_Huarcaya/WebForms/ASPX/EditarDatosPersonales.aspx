<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarDatosPersonales.aspx.cs" Inherits="WebForms.ASPX.EditarDatosPersonales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
     <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!--CSS Estilos -->
    <link href="#" rel="stylesheet" />
    
    <title>Editar Datos Personales</title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" id="txt_NombreApellido"/>
            <asp:TextBox runat="server" id="txtTelefono_Movil"/>
            <asp:TextBox runat="server" id="txt_TelefonoFijo"/> 
            <asp:TextBox runat="server" id="txt_Email"/> 
            <asp:TextBox runat="server" id="txt_FechaNac"/> 
            <asp:TextBox runat="server" id="txt_EmailRecuperacion"/> 
            <asp:Button Text="Aplicar Cambios" runat="server" cssClass="btn btn-dark" OnClick="Unnamed_Click"/>
        </div>
    </form>
</body>
</html>
