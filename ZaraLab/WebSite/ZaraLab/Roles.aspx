<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Roles.aspx.cs" Inherits="Roles" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Administraci&oacute;n de roles</h1>
    </hgroup>
    <br />
    <div class="panel panel-primary">
        <div class="panel-heading">            
                <span class="mif-lock"></span>
                Administraci&oacute;n de Roles
            <asp:TextBox runat="server" ID="txtBuscarRol" style="margin-left:31.5%;" placeholder="Buscar..."></asp:TextBox>
            <asp:Button runat="server" ID="btnBuscarR" Text="Buscar" style="border-radius:8px;"/>
            <asp:Button runat="server" ID="btnNuevo" Text="Nuevo" OnClick="btnNuevo_Click" style="border-radius:8px;" />
        </div>
        <div class="panel-body">
            <asp:GridView runat="server" ID="gv_lista_roles" CssClass="table-bordered" HeaderStyle-BackColor="#3399ff"
                 Width="911px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">

                <AlternatingRowStyle BackColor="White" />

                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="70px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Descripcion">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True">
                    <ItemStyle Width="90px" />
                    </asp:CommandField>
                    <asp:CommandField ShowDeleteButton="True">
                    <ItemStyle Width="50px" />
                    </asp:CommandField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />

            </asp:GridView>
        </div>
    </div>
    
    
</asp:Content>
