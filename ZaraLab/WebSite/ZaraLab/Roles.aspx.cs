using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Roles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("Descripcion");
            DataRow dr = null;
            dr = dt.NewRow();
            dr["ID"] = 1;
            dr["Descripcion"] = "Administracion de facturas";
            dt.Rows.Add(dr);
            dr = dt.NewRow();
            dr["ID"] = 1;
            dr["Descripcion"] = "Administracion de facturas";
            dt.Rows.Add(dr);

            gv_lista_roles.DataSource = dt;
            gv_lista_roles.DataBind();
        }
    }
    protected void btnNuevo_Click(object sender, EventArgs e)
    {
        Response.Redirect("CrearRoles.aspx");
    }
    protected void gv_lista_roles_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case ("btnEdit"):
                Response.Write("<script>alert('push edit')</script>");
                break;
            case ("btnSave"):
                Response.Write("<script>alert('push save')</script>");
                break;
            case ("btnDelete"):
                Response.Write("<script>alert('push delete')</script>");
                break;
        }
    }
}