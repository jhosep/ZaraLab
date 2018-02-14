<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="CrearPermiso.aspx.cs" Inherits="CrearPermiso" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="BodyContent">
    <hgroup class="title">
        <h1>
            Gesti&oacute;n de Permisos
        </h1>
    </hgroup>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <p style="font-size:16px;">
            <span class="mif-pin"></span>
            Creando nuevo Permiso
            </p>
        </div>
        <div class="panel-body">
            <asp:Label runat="server" ID="NRol" Text="Permiso" style="margin-left:2.5%;"></asp:Label>
            <asp:TextBox runat="server" ID="txtNRol" Width="400px"></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="TRol" Text="Descripción" ></asp:Label>
            <asp:TextBox runat="server" ID="txtTRol" Width="400px"></asp:TextBox>
            <hr />
            <asp:Button runat="server" ID="btnRegresar" Text="Regresar" style="border-radius:8px;margin-left:30%;" 
                OnClick="btnRegresar_Click"/>
            <asp:Button runat="server" ID="btnCrear" Text="Guardar" style="border-radius:8px;"/>
        </div>
    </div>
</asp:Content>
