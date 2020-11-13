using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Negocio
{
    public class EstiloNegocio
    {
        public int Agregar(Estilo estilo)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("insert into Estilos(Descripcion) values('"+ estilo.Descripcion +"')");
            conexion.Desconectar();
            return rowsAfectadas;
        }
    }
}
