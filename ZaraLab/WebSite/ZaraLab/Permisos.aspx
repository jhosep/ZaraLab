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
            <div class="panel-body">
            
            <asp:Label runat="server" style="margin-left:60px;">Seleccione un rol</asp:Label>
            <asp:DropDownList runat="server" ID="Lista_roles" style="margin-left:10px;" Width="200px">
                <asp:ListItem>Administracion</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <span class="mif-bubble" style="margin-left:10px;"></span>
            Gesti&oacute;n de Permisos
            <asp:Button runat="server" ID="btnAdminPer" Text="Administrar Menu" style="margin-left:45%;border-radius:8px;"/>
            <asp:Button runat="server" ID="btnGuardarPer" Text="Guardar" style="border-radius:8px;"/>
            <asp:Button runat="server" ID="btnNuevoPer" Text="Nuevo" OnClick="btnNuevoPer_Click" style="border-radius:8px;"/> 
            <br />
            <div id="tabs">
                <ul>
                    <li><a href="#tabs-1">Tecnico Lab.</a></li>
                    <li><a href="#tabs-2">Ventas</a></li>
                    <li><a href="#tabs-3">Compras</a></li>
                    <li><a href="#tabs-4">Contabilidad</a></li>
                </ul>
                <div id="tabs-1">
                    <asp:GridView runat="server" ID="gv_Permiso" CssClass="table-bordered" HeaderStyle-BackColor="#3399ff"
                         AutoGenerateColumns="False" Width="820px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gv_Permiso_RowCommand" >
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
                        <ItemStyle Width="300px" />
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="false" >
                        <ItemStyle Width="5px"/>
                        <EditItemTemplate>
                            <asp:CheckBox ID="ChkRol" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckRol" runat="server" style="margin-left:60%"/>
                        </ItemTemplate>

<ItemStyle Width="5px"></ItemStyle>
                   
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemStyle Width="19.7%"/>
                        <ItemTemplate>
                            <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="~/Images/edit.png" Height="35px" Width="35px" BackColor="#c0c0c0"
                                  CausesValidation="false" CommandName="btnEdit" ></asp:ImageButton>
                            <asp:ImageButton ID="btnSave" runat="server" ImageUrl="~/Images/Save-as-icon.png" Height="35px" Width="35px" BackColor="#c0c0c0"
                                CausesValidation="false" CommandName="btnSave" OnClientClick="javascript:if(!confirm('¿Desea guardar cambios?'))return false"></asp:ImageButton>
                            <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="~/Images/delete-file-icon.png" Height="35px" Width="35px" BackColor="#c0c0c0" 
                                CausesValidation="false" CommandName="btnDelete" OnClientClick="javascript:if(!confirm('¿Desea borrar el registro?'))return false"></asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateField>                    
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
                <div id="tabs-2">Mundo</div>
                <div id="tabs-3">De</div>
                <div id="tabs-4">Tabs</div>
            </div>            
            
        </div>        
    </div>
    <script>
        $(function () {
            $("#tabs").tabs();
        });
    </script>
    
</asp:Content>