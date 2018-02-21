<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile ="CrearRoles.aspx.cs" Inherits="CrearRoles" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            Administraci&oacute;n de Roles
        </h1>
    </hgroup>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <p style="font-size:16px;">
            <span class="mif-pin"></span>
            Creando nuevo Rol
            </p>
        </div>
        <div class="panel-body">
            <asp:Label runat="server" ID="NRol" Text="Nombre Rol" style="margin-left:-0.1%;"></asp:Label>
            <asp:TextBox runat="server" ID="txtNRol" Width="400px"></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="TRol" Text="Descripción" ></asp:Label>
            <asp:TextBox runat="server" ID="txtTRol" Width="400px"></asp:TextBox>
            <hr />
            <asp:Button runat="server" ID="btnRegresar" Text="Regresar" style="border-radius:8px;margin-left:30%;" 
                OnClick="btnRegresar_Click"/>
            <asp:Button runat="server" ID="btnCrear" Text="Guardar" style="border-radius:8px;" OnClick="btnCrear_Click"/>
        </div>
    </div>
    
</asp:Content>