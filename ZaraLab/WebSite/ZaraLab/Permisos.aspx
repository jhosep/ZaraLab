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
            </asp:DropDownList>
                
            <br />
            <br />
            <span class="mif-bubble" style="margin-left:10px;"></span>
            Gesti&oacute;n de Permisos
            <asp:Button runat="server" ID="btnAdminPer" Text="Administrar Menu" style="margin-left:45%;border-radius:8px;" OnClick="btnAdminPer_Click"/>
            <asp:Button runat="server" ID="btnGuardarPer" Text="Guardar" style="border-radius:8px;"/>
            <asp:Button runat="server" ID="btnNuevoPer" Text="Nuevo" OnClick="btnNuevoPer_Click" style="border-radius:8px;"/> 
            <br />
            <asp:GridView runat="server" ID="gv_Permiso" CssClass="table-bordered" HeaderStyle-BackColor="#3399ff"
                         AutoGenerateColumns="False" Width="880px" CellPadding="4" ForeColor="#333333" GridLines="None"
                 DataKeyNames="id_permiso" OnRowCancelingEdit="gv_Permiso_RowCancelingEdit" OnRowDeleting="gv_Permiso_RowDeleting" OnRowEditing="gv_Permiso_RowEditing" OnRowUpdating="gv_Permiso_RowUpdating" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="id_permiso">
                        <ItemStyle Width="5%"/>
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id_permiso") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("id_permiso") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Permiso" SortExpression="nombre_permiso">
                        <ItemStyle Width="77%"/>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtRol" runat="server" Text='<%# Bind("nombre_permiso") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombre_permiso") %>'></asp:Label>
                        </ItemTemplate>
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
                        <EditItemTemplate>
                            <asp:ImageButton ID="SaveBtn" runat="server" CausesValidation="True" CommandName="Update" 
                                ImageUrl="~/Images/Save-as-icon.png" Width="30px" Height="30px" BackColor="#c0c0c0"
                                OnClientClick="javascript:if(!confirm('¿Desea modificar el registro?'))return false"></asp:ImageButton>
                            &nbsp;<asp:ImageButton ID="CancelBtn" runat="server" CausesValidation="False" CommandName="Cancel"
                                 ImageUrl="~/Images/Actions-application-exit-icon.png" Width="30px" Height="30px" BackColor="#c0c0c0"></asp:ImageButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="EditBtn" runat="server" CausesValidation="False" CommandName="Edit" 
                                ImageUrl="~/Images/edit.png" Width="30px" Height="30px" BackColor="#c0c0c0"></asp:ImageButton>
                             <asp:ImageButton ID="DeleteBtn" runat="server" CausesValidation="False" CommandName="Delete"
                                  ImageUrl="~/Images/delete-file-icon.png" Width="30px" Height="30px" BackColor="#c0c0c0"
                                 OnClientClick="javascript:if(!confirm('¿Desea borrar el registro?'))return false"></asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateField>                    
                </Columns>
                <EditRowStyle BackColor="White" />
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