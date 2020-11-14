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
        public List<Pagina> listarPaginas()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            List<Pagina> lista = new List<Pagina>();

            var lectura = conexion.Consulta_Rapida("Select * From Paginas");

            while(lectura.Read())
            {
                Pagina aux = new Pagina();
                aux.ID = lectura.GetInt16(0);
                aux.Descripcion = lectura.GetString(1);

                lista.Add(aux);
            }
            conexion.Desconectar();
            return lista;

        }
        public List<Funcionalidad> listarFuncionalidades()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            List<Funcionalidad> lista = new List<Funcionalidad>();

            var lectura = conexion.Consulta_Rapida("Select * From Funcionalidades");

            while (lectura.Read())
            {
                Funcionalidad aux = new Funcionalidad();
                aux.Id = lectura.GetInt16(0);
                aux.Descripcion = lectura.GetString(1);

                lista.Add(aux);
            }
            conexion.Desconectar();
            return lista;

        }
        public List<Estilo> listarEstilos()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            List<Estilo> lista = new List<Estilo>();

            var lectura = conexion.Consulta_Rapida("Select * From Estilos");

            while (lectura.Read())
            {
                Estilo aux = new Estilo();
                aux.Id = lectura.GetInt16(0);
                aux.Descripcion = lectura.GetString(1);

                lista.Add(aux);
            }
            conexion.Desconectar();
            return lista;

        }
    }
   
}
