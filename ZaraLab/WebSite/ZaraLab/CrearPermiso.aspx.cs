﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CrearPermiso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Permisos.aspx");
    }
    protected void btnCrear_Click(object sender, EventArgs e)
    {
        ClasePermisos funciones = new ClasePermisos();
        funciones.nombre_permiso = txtNP.Text;
        funciones.descripcion_permiso = txtTP.Text;

        String mensaje = funciones.insertar_roles(funciones);
        if (mensaje.Equals("1"))
        {
            Response.Write("<script>alert('Rol creado con exito')</script>");
        }
        else
        {
            Response.Write("<script>alert('" + mensaje + "')</script>");
        }
        txtNP.Text = "";
        txtTP.Text = "";
    }
}