using System.Data;
using System.Data.SqlClient;

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


    }

}
