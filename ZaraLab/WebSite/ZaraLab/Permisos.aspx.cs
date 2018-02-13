using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Permisos : System.Web.UI.Page
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
         
            gv_rol.DataSource = dt;
            gv_rol.DataBind();
        }

    }
}