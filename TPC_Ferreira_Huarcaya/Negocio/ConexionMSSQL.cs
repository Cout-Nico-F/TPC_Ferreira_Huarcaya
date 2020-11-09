using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocios
{
    public class ConexionMSSQL
    {
        public SqlDataReader DataReader { get; set; }
        public SqlConnection Connection { get; set; }
        public SqlCommand Command { get; set; }

        public void Conectar  ()
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
    
    }
}
