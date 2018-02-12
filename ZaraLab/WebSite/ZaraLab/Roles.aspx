<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Roles.aspx.cs" Inherits="Roles" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Administracion de roles</h1>
    </hgroup>
    <br />
    <asp:Button runat="server" ID="btnBuscarR" Text="Buscar"/>
    <asp:Button runat="server" ID="btnNuevo" Text="Nuevo" OnClick="btnNuevo_Click"/>
    <br />
    
</asp:Content>
