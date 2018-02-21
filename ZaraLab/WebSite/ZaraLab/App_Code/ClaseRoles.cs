using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Descripción breve de ClaseRoles
/// </summary>
public class ClaseRoles
{
    SqlConnection conexion =
        new SqlConnection(@"Data Source=MARIO-PC\LOCAL;Initial Catalog=dbPruebasLab;Integrated Security=true;");
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();

    public int id_rol{ get; set;}
    public String nombre_rol{ get; set;}
    public String descripcion_rol{ get; set;}

    public ClaseRoles()
    {


    }

    public String insertar_roles(ClaseRoles dts)
    {
        try 
        {
            conexion.Open();
            cmd = new SqlCommand("insertar_Roles");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexion;
            cmd.Parameters.AddWithValue("@nombre_rol", dts.nombre_rol);
            cmd.Parameters.AddWithValue("@descripcion_rol", dts.descripcion_rol);
            int fila = cmd.ExecuteNonQuery();
            return Convert.ToString(fila);
        }
        catch(SqlException ex)
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

    public DataTable obtenerDatosRoles()
    {        
        try
        {
            conexion.Open();
            cmd = new SqlCommand("obtener_roles");
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

    public String eliminar_roles(ClaseRoles dts)
    {
        try
        {
            conexion.Open();
            cmd = new SqlCommand("eliminar_roles");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexion;
            cmd.Parameters.AddWithValue("@id_rol", dts.id_rol);
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

    public String modificar_roles(ClaseRoles dts)
    {
        try
        {
            conexion.Open();
            cmd = new SqlCommand("modificar_roles");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexion;
            cmd.Parameters.AddWithValue("@id_rol", dts.id_rol);
            cmd.Parameters.AddWithValue("@nombre_rol", dts.nombre_rol);
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