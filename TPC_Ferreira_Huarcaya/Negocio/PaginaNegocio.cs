using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;
using Negocio;

namespace Negocio
{
    class PaginaNegocio
    {
        public List<Pagina> listarPaginas()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            List<Pagina> lista = new List<Pagina>();

            var lectura = conexion.Consulta_Rapida("Select * From Paginas");

            while (lectura.Read())
            {
                Pagina aux = new Pagina();
                aux.ID = lectura.GetInt16(0);
                aux.Descripcion = lectura.GetString(1);

                lista.Add(aux);
            }
            conexion.Desconectar();
            return lista;

        }
    }
}
