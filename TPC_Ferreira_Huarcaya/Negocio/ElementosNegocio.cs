using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;
using Negocios;

namespace Negocio
{
    public class ElementosNegocio
    {
        public List<Elemento> ListarElementos(string consultaSQL)
        {
            ConexionMSSQL conexionMSSQL = new ConexionMSSQL();

            List<Elemento> lista = new List<Elemento>();
            conexionMSSQL.Conectar();
            conexionMSSQL.SetConsulta(consultaSQL);

            SqlDataReader lector = conexionMSSQL.Leer();

            while (lector.Read())
            {
                Elemento aux = new Elemento();
                aux.Id = lector.GetInt16(0);
                aux.Descripcion = lector.GetString(1);

                lista.Add(aux);
            }
            conexionMSSQL.Desconectar();
            return lista;
        }
    }
}
