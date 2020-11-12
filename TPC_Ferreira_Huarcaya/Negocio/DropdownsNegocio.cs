using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;
using System.Data.SqlClient;
using Negocios;
using System.Data;

namespace Negocio
{
    public class DropdownsNegocio
    { 
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

        public List<Seccion> listarSecciones()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            List<Seccion> listaSec = new List<Seccion>();

            SqlDataReader lectura = conexion.Consulta_Rapida("Select Descripcion From Secciones"); /*Vamos a ver si funciona solo con la descripcion*/

            while (lectura.Read())
            {
                Seccion aux = new Seccion();
                aux.Descripcion = lectura.GetString(0);

                listaSec.Add(aux);
            }
            conexion.Desconectar();
            return listaSec;
        }
    }
}
