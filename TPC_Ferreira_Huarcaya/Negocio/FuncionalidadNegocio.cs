using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class FuncionalidadNegocio
    {
        /// <summary>
        /// Agrega una funcionalidad a la lista en base de datos.
        /// </summary>
        /// <param name="Func"></param>
        /// <returns>Devuelve la cantidad de lineas afectadas en la base. (1 si fue exitoso) </returns>
        public int Agregar(Funcionalidad Func)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("insert into Funcionalidades(Descripcion, Costo) values('" + Func.Descripcion + "' , '" + Func.Costo + "')");
            conexion.Desconectar();
            return rowsAfectadas;
        }

        /// <summary>
        /// Devuelve la lista completa de funcionalidades existentes en la base de datos.
        /// </summary>
        /// <returns></returns>
        public List<Funcionalidad> Listar ()
        {
            List<Funcionalidad> lista = new List<Funcionalidad>();
            ConexionMSSQL conexion = new ConexionMSSQL();
            var lectura = conexion.Consulta_Rapida("select * from funcionalidades");

            while (lectura.Read())
            {
                Funcionalidad fun = new Funcionalidad();
                fun.Id = lectura.GetInt16(0);
                fun.Descripcion = lectura.GetString(1);
                fun.Costo = lectura.GetInt32(2);
                lista.Add(fun);
            }
            conexion.Desconectar();
            return lista;
        }

        public int Eliminar(Int16 id)//tal vez serviria un procedimiento almacenado que solo elimine si la sentencia afecta 1 sola row?
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("Delete from Funcionalidades where ID ="+ id);
            conexion.Desconectar();
            return rowsAfectadas;
        }
    }
}
