<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Permisos.aspx.cs" Inherits="Permisos" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="BodyContent">
    <hgroup class="title">
        <h1>Administraci&oacute;n de permisos</h1>
    </hgroup>
     <div class="panel panel-primary">
        <div class="panel-heading">
            <p style="font-size:16px;">
            <span class="mif-user"></span>
            Gesti&oacute;n de Permisos
            </p>
        </div>
        <div class="panel-body">
            <asp:Label runat="server" style="margin-left:60px;">Seleccione un rol</asp:Label>
            <asp:DropDownList runat="server" ID="Lista_roles" style="margin-left:10px;" Width="200px">
                <asp:ListItem>Administracion</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <span class="mif-bubble" style="margin-left:10px;"></span>
            Gesti&oacute;n de Permisos
            <asp:Button runat="server" ID="btnAdminPer" Text="Administrar Menu" style="margin-left:47%;border-radius:8px;"/>
            <asp:Button runat="server" ID="btnGuardarPer" Text="Guardar" style="border-radius:8px;"/>
            <asp:Button runat="server" ID="btnNuevoPer" Text="Nuevo" OnClick="btnNuevoPer_Click" style="border-radius:8px;"/> 
            <hr />
            <asp:GridView runat="server" ID="gv_rol" CssClass="table-bordered" HeaderStyle-BackColor="#3399ff" AutoGenerateColumns="False" Width="920px" CellPadding="4" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblID" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="70px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Descripcion">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDescripcion" runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Permiso Rol" ItemStyle-Width="100px">
                        <EditItemTemplate>
                            <asp:CheckBox ID="ChkRol" runat="server"/>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckRol" runat="server" />
                        </ItemTemplate>

<ItemStyle Width="100px"></ItemStyle>
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