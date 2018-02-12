<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile ="CrearRoles.aspx.cs" Inherits="CrearRoles" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Label runat="server" ID="NRol" Text="Nombre:"></asp:Label>
    <asp:TextBox runat="server" ID="txtNRol" Width="420px"></asp:TextBox>
    <br />
    <asp:Label runat="server" ID="TRol" Text="Descripcion:"></asp:Label>
    <asp:TextBox runat="server" ID="txtTRol" Width="400px"></asp:TextBox>
    <br />
    <asp:Button runat="server" ID="btnCrear" Text="Crear"/>
</asp:Content>