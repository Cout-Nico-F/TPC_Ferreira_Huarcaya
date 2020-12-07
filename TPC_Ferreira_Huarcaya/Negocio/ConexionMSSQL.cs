using System.Data;
using System.Data.SqlClient;

namespace Negocio
{
    public class ConexionMSSQL
    {
        public SqlDataReader DataReader { get; set; }
        public SqlConnection Connection { get; set; }
        public SqlCommand Command { get; set; }

        public void Conectar()
        {
            Connection = new SqlConnection("data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi");
            Command = new SqlCommand();
            Command.Connection = Connection;
            Connection.Open();
        }

        public void Desconectar()
        {
            Connection.Close();
        }

        public void SetConsulta(string consulta)
        {
            Command.CommandText = consulta;
        }

        public SqlDataReader Leer()
        {
            DataReader = Command.ExecuteReader();
            return DataReader;
        }

        public SqlDataReader Consulta_Rapida(string consulta)
        {
            Conectar();
            SetConsulta(consulta);
            SqlDataReader lectura = Leer();
            return lectura;
        }
        public void SetStoredProcedure(string storedProcedureQuery)
        {
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = storedProcedureQuery;
        }

        public void AgregarParametro(string clave, string valor)
        {
            Command.Parameters.AddWithValue(clave, valor);
        }

        public int SentenciaNonQuery(string sentencia)
        {
            Conectar();
            Command.CommandType = CommandType.Text;
            Command.CommandText = sentencia;
            int rowsAfectadas = Command.ExecuteNonQuery();
            Desconectar();
            return rowsAfectadas;
        }

    }
}
