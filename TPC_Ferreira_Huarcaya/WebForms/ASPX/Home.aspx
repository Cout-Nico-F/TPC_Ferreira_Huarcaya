﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebForms.ASPX.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--<a href="WebPages.aspx">
        <h1>
         Navegar a WebPages
        </h1>
    </a> -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Catalogo.aspx">Catalogo</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="WebPages">Otro</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Contacto.aspx">Informacion</a>
                </li>
            </ul>
        </div>
    </nav>



</asp:Content>
