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
                 Width="911px" AutoGenerateColumns="False" 
                DataKeyNames="id_rol" OnRowCancelingEdit="gv_lista_roles_RowCancelingEdit" OnRowDeleting="gv_lista_roles_RowDeleting" OnRowEditing="gv_lista_roles_RowEditing" OnRowUpdating="gv_lista_roles_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None">

                <AlternatingRowStyle BackColor="White" />

                <Columns>
                    <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="id_rol">
                        <ItemStyle Width="5%"/>
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id_rol") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("id_rol") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ROL" SortExpression="nombre_rol">
                        <ItemStyle Width="77%"/>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtRol" runat="server" Text='<%# Bind("nombre_rol") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombre_rol") %>'></asp:Label>
                        </ItemTemplate>
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

                <EditRowStyle BackColor="white" />
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
