using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;
using System.Data.SqlClient;
using System.Data;

namespace Negocio
{
    public class DropdownsNegocio
    { 
       /* public List<Color> ListarColores(string consultaSQL)
        {
            ConexionMSSQL conexionMSSQL = new ConexionMSSQL();

            List<Color> lista = new List<Color>();
            conexionMSSQL.Conectar();
            conexionMSSQL.SetConsulta(consultaSQL);

            SqlDataReader lector = conexionMSSQL.Leer();

            while(lector.Read())
            {
                Color aux = new Color();
                aux.Id = lector.GetInt16(0);
                aux.Descripcion = lector.GetString(1);

                lista.Add(aux);
            }
            conexionMSSQL.Desconectar();
            return lista;
        }*/ 
       /*No estamos usando esta list*/

        /// <summary>
        /// Consulta la base de datos y devuelve un dataset con el resultado de la consulta para ser utilizado en dropdowns u otros controles que utilizen dataset
        /// 
        /// </summary>
        /// <param name="consulta"></param>
        /// <returns></returns>
        public DataSet ConsultaDataSet(string consulta)
        {
            string strconnection = "data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi";
            SqlConnection connection = new SqlConnection(strconnection);
            connection.Open();
            SqlCommand command = new SqlCommand(consulta, connection);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            connection.Close();
            return dataSet;
        }
    }
   
}
