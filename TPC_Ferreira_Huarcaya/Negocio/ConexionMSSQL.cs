using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
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
        public void SetStoredProcedure(string storedProcedureQuery)
        {
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = storedProcedureQuery;
        }

        public void AgregarParametro(string clave, string valor) /*no tiene que ser el valor de tipo string tiene que aceptar todos los tipos de la clase modelo*/
        {
            Command.Parameters.AddWithValue(clave, valor);
        }// para esto que me nombras en el comentario de arriba hay 2 opciones. o convertimos de string al tipo de dato necesario o hacemos que reciba un tipo Object. creo que el casteo es mas simple

        public int SentenciaNonQuery (string sentencia)
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
