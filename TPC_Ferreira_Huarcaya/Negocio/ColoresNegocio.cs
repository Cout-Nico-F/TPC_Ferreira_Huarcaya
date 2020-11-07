using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;
using System.Data.SqlClient;

namespace Negocio
{
    public class ColoresNegocio
    { 
        public List<Color> listar()
        {
            SqlConnection conexion = new SqlConnection();
            SqlCommand comando = new SqlCommand();
            SqlDataReader lector;
            List<Color> lista = new List<Color>();

            conexion.ConnectionString = "data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi";
            comando.CommandType = System.Data.CommandType.Text;
            comando.CommandText = "Select ID,Descripcion From Colores";
            comando.Connection = conexion;

            conexion.Open();
            lector = comando.ExecuteReader();
            while(lector.Read())
            {
                Color aux = new Color();
                aux.Id = lector.GetInt16(0);
                aux.Descripcion = lector.GetString(1);

                lista.Add(aux);
            }
            conexion.Close();
            return lista;
        }
    }
}
