<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Roles.aspx.cs" Inherits="Roles" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Administracion de roles</h1>
    </hgroup>
    <br />
    <asp:Button runat="server" ID="btnBuscarR" Text="Buscar"/>
    <br />
    <br />
    <asp:Label runat="server" ID="NRol" Text="Nombre:"></asp:Label>
    <asp:TextBox runat="server" ID="txtNRol" Width="420px"></asp:TextBox>
    <br />
    <asp:Label runat="server" ID="TRol" Text="Descripcion:"></asp:Label>
    <asp:TextBox runat="server" ID="txtTRol" Width="400px"></asp:TextBox>
    <br />
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" Width="382px">
        <asp:ListItem>Administrador</asp:ListItem>
    </asp:CheckBoxList>
    
    <asp:Button runat="server" ID="btnCrear" Text="Crear"/>
</asp:Content>
