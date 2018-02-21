using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Descripción breve de ClasePermisos
/// </summary>
public class ClasePermisos
{
    SqlConnection conexion =
        new SqlConnection(@"Data Source=MARIO-PC\LOCAL;Initial Catalog=dbPruebasLab;Integrated Security=true;");
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();

    public int id_permiso { get; set; }
    public String nombre_permiso { get; set; }
    public String descripcion_permiso { get; set; }

	public ClasePermisos()
	{
	}

    public String insertar_roles(ClasePermisos dts)
    {
        try
        {
            conexion.Open();
            cmd = new SqlCommand("insertar_permiso");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexion;
            cmd.Parameters.AddWithValue("@nombre_permiso", dts.nombre_permiso);
            cmd.Parameters.AddWithValue("@descripcion_permiso", dts.descripcion_permiso);
            int fila = cmd.ExecuteNonQuery();
            return Convert.ToString(fila);
        }
        catch (SqlException ex)
        {
            return ex.Message;
        }
        finally
        {
            if (conexion.State == ConnectionState.Open)
            {
                conexion.Close();
            }
        }
    }

    public DataTable obtener_permisos()
    {
        try
        {
            conexion.Open();
            cmd = new SqlCommand("obtener_permisos");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexion;
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            return dt;
        }
        catch (SqlException ex)
        {
            dt = null;
            return dt;
        }
        finally
        {
            if (conexion.State == ConnectionState.Open)
            {
                conexion.Close();
            }
        }
    }

    public String eliminar_permiso(ClasePermisos dts)
    {
        try
        {
            conexion.Open();
            cmd = new SqlCommand("eliminar_permiso");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexion;
            cmd.Parameters.AddWithValue("@id_rol", dts.id_permiso);
            int fila = cmd.ExecuteNonQuery();
            return Convert.ToString(fila);
        }
        catch (SqlException ex)
        {
            return ex.Message;
        }
        finally
        {
            if (conexion.State == ConnectionState.Open)
            {
                conexion.Close();
            }
        }
    }

    public String modificar_permiso(ClasePermisos dts)
    {
        try
        {
            conexion.Open();
            cmd = new SqlCommand("modificar_permiso");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexion;
            cmd.Parameters.AddWithValue("@id_permiso", dts.id_permiso);
            cmd.Parameters.AddWithValue("@nombre_permiso", dts.nombre_permiso);
            int fila = cmd.ExecuteNonQuery();
            return Convert.ToString(fila);
        }
        catch (SqlException ex)
        {
            return ex.Message;
        }
        finally
        {
            if (conexion.State == ConnectionState.Open)
            {
                conexion.Close();
            }
        }
    }
}