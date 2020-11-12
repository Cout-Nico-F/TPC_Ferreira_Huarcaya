using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    class FuncionalidadNegocio
    {
        public int Agregar(Funcionalidad Func)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("insert into Funcionalidades(Descripcion, Costo) values('" + Func.Descripcion + "' , '" + Func.Costo + "')");
            conexion.Desconectar();
            return rowsAfectadas;
        }
    }
}
