<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile ="CrearRoles.aspx.cs" Inherits="CrearRoles" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            Administraci&oacute;n de roles
        </h1>
    </hgroup>
    <div class="panel panel-default">
        <div class="panel-heading">
            <p style="font-size:16px;">
            <span class="mif-users"></span>
            Creaci&oacute;n de roles
            </p>
        </div>
        <div class="panel-body">
            <asp:Label runat="server" ID="NRol" Text="Tipo rol" style="margin-left:2.5%;"></asp:Label>
            <asp:TextBox runat="server" ID="txtNRol" Width="400px"></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="TRol" Text="Descripción" ></asp:Label>
            <asp:TextBox runat="server" ID="txtTRol" Width="400px"></asp:TextBox>
        </div>
        <div class="panel-footer">
            <asp:Button runat="server" ID="btnRegresar" Text="Regresar" style="border-radius:8px;margin-left:30%;" 
                OnClick="btnRegresar_Click"/>
            <asp:Button runat="server" ID="btnCrear" Text="Guardar" style="border-radius:8px;"/>
        </div>
    </div>
    
</asp:Content>