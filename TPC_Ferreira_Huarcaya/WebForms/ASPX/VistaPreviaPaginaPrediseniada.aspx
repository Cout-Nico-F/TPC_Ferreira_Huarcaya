<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VistaPreviaPaginaPrediseniada.aspx.cs" Inherits="WebForms.ASPX.VistaPreviaPaginaPrediseniada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!--CDN Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <!--CDN Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <!--Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Raleway:wght@500&display=swap" rel="stylesheet" />

    <title>Vista Previa</title>

</head>
<body>
    <form id="form1" runat="server">
       
     
             <h1><%=txt_titulo.Text %></h1>
      

        <asp:TextBox Text="" runat="server" ID="txt_titulo"/>

        <asp:Button Text="Vista Previa" runat="server" ID="btn_Vista" OnClick="btn_Vista_Click"/>
    </form>
</body>
</html>
