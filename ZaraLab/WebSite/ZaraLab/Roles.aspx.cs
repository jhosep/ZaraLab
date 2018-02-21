using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Roles : System.Web.UI.Page
{
    public void cargar_datos_gv() 
    {
        ClaseRoles funciones = new ClaseRoles();
        gv_lista_roles.DataSource = funciones.obtenerDatosRoles();
        gv_lista_roles.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargar_datos_gv();
        }
    }
    protected void btnNuevo_Click(object sender, EventArgs e)
    {
        Response.Redirect("CrearRoles.aspx");
    }


    protected void gv_lista_roles_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        ClaseRoles funciones = new ClaseRoles();
        String mensaje = "";

        GridViewRow fila = gv_lista_roles.Rows[e.RowIndex];

        funciones.id_rol = Convert.ToInt32(gv_lista_roles.DataKeys[e.RowIndex].Values[0]);
        funciones.nombre_rol = (fila.FindControl("txtRol") as TextBox).Text;
        mensaje = funciones.modificar_roles(funciones);
        if (mensaje.Equals("1"))
        {
            Response.Write("<script>alert('Se a modificado el rol seleccionado')</script>");
            gv_lista_roles.EditIndex = -1;
            cargar_datos_gv();
        }
        else
        {
            Response.Write("<script>alert('" + mensaje + "')</script>");
        }
        
    }
    protected void gv_lista_roles_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gv_lista_roles.EditIndex = e.NewEditIndex;
        cargar_datos_gv();
    }
    protected void gv_lista_roles_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ClaseRoles funciones = new ClaseRoles();
        String mensaje = "";

        funciones.id_rol = Convert.ToInt32(gv_lista_roles.DataKeys[e.RowIndex].Values[0]);

        mensaje = funciones.eliminar_roles(funciones);
        if (mensaje.Equals("1"))
        {
            Response.Write("<script>alert('Se a elminado el rol seleccionado')</script>");
            gv_lista_roles.EditIndex = -1;
            cargar_datos_gv();
        }
        else
        {
            Response.Write("<script>alert('"+mensaje+"')</script>");
        }
    }
    protected void gv_lista_roles_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gv_lista_roles.EditIndex = -1;
        cargar_datos_gv();
    }
}