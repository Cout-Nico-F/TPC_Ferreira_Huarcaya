<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="WebForms.ASPX.Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!--Hoja de estilos CSS -->
    <link href="../CSS/Estilos_Error.css" rel="stylesheet" />

    <title>Fatal Error</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <section class="error-message">
                <section class="error-message-container">
                    <h1>:(</h1>
                    <h2 class="animated bounce"> Lo sentimos...Cometimos un error</h2>
                    <asp:Label Text="" runat="server" ID="lblError" CssClass="clase"/>
                </section>
            </section>
            
        </div>
        <footer class="footer">
            <a href="Catalogo.aspx">Volver al catalogo</a>
            <a href="Home.aspx">Volver al Home</a>
            <a href="javascript:history.back()">Volver atras</a>
        </footer>
    </form>
</body>
</html>
