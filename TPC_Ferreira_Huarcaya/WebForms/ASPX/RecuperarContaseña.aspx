<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarContaseña.aspx.cs" Inherits="WebForms.ASPX.RecuperarContaseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
         <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" "/>
     <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />

    <title>Recuperar Contraseña</title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" placeholder="Ingrese su correo electronico" ID="txt_Recuperar" />  
            <asp:Button Text="Recuperar" runat="server" ID="btn_Recuperar" OnClick="btn_Recuperar_Click"/>
            <asp:Label Text="" runat="server" ID="lbl_Recuperar"/>
        </div>
    </form>
</body>
</html>
