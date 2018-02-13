<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Roles.aspx.cs" Inherits="Roles" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Administracion de roles</h1>
    </hgroup>
    <br />
    <div class="panel panel-primary">
        <div class="panel-heading">            
                <span class="mif-user"></span>
                Administracion de roles
            <asp:TextBox runat="server" ID="txtBuscarRol" style="margin-left:31.5%;" placeholder="Buscar..."></asp:TextBox>
            <asp:Button runat="server" ID="btnBuscarR" Text="Buscar" style="border-radius:8px;"/>
            <asp:Button runat="server" ID="btnNuevo" Text="Nuevo" OnClick="btnNuevo_Click" style="border-radius:8px;" />
        </div>
        <div class="panel-body">
            <asp:GridView runat="server" ID="gv_lista_roles" CssClass="table table-bordered" HeaderStyle-CssClass="bg-primary"
                 Width="682px">

            </asp:GridView>
        </div>
    </div>
    
    
</asp:Content>
