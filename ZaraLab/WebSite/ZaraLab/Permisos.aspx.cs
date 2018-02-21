using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Permisos : System.Web.UI.Page
{
    public void cargar_dropdown()
    {
        ClaseRoles funciones = new ClaseRoles();
        Lista_roles.DataSource = funciones.obtenerDatosRoles();
        Lista_roles.DataTextField = "nombre_rol";
        Lista_roles.DataValueField = "id_rol";
        Lista_roles.DataBind();
    }

    public void cargar_gv_permisos()
    {
        ClasePermisos funciones = new ClasePermisos();
        gv_Permiso.DataSource = funciones.obtener_permisos();
        gv_Permiso.DataBind();
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargar_dropdown();
        }

    }
    protected void btnNuevoPer_Click(object sender, EventArgs e)
    {
        Response.Redirect("CrearPermiso.aspx");
    }
        
    protected void gv_Permiso_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }   
    protected void gv_Permiso_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gv_Permiso.EditIndex = e.NewEditIndex;
        cargar_gv_permisos();
    }

    protected void gv_Permiso_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void gv_Permiso_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gv_Permiso.EditIndex = -1;
        cargar_gv_permisos();
    }
    protected void btnAdminPer_Click(object sender, EventArgs e)
    {
        cargar_gv_permisos();
    }
}
