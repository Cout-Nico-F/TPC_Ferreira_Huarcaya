using Modelo;
using System;
using System.Collections.Generic;

namespace Negocio
{
    public class PaginaNegocio
    {
        public List<Pagina> Listar()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            List<Pagina> lista = new List<Pagina>();

            var lectura = conexion.Consulta_Rapida("Select * From Paginas");

            while (lectura.Read())
            {
                Pagina aux = new Pagina();
                aux.ID = lectura.GetInt16(0);
                aux.Descripcion = lectura.GetString(1);
                aux.Url_Imagen = lectura.GetString(2);

                lista.Add(aux);
            }
            conexion.Desconectar();
            return lista;

        }

        public int Agregar(Pagina pag)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("insert into paginas (descripcion,Url_Imagen,Habilitado) values ('" + pag.Descripcion + "','" + pag.Url_Imagen + "','" + pag.Habilitado + "')");
            conexion.Desconectar();
            return rowsAfectadas;
        }

        public int Eliminar(Int16 id)//tal vez serviria un procedimiento almacenado que solo elimine si la sentencia afecta 1 sola row?
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("Delete from paginas where ID =" + id);
            conexion.Desconectar();
            return rowsAfectadas;
        }
        public int Modificar(Pagina pagina)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("update paginas set Descripcion='" + pagina.Descripcion + "',Url_Imagen='" + pagina.Url_Imagen + "',Habilitado=" + Convert.ToInt16(pagina.Habilitado) + " Where ID=" + pagina.ID);
            conexion.Desconectar();
            return rowsAfectadas;
        }
    }
}
