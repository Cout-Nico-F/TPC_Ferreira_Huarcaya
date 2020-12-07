using Modelo;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Negocio
{
    public class EstiloNegocio
    {
        public int Agregar(Estilo estilo)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("insert into Estilos(Descripcion, Url_Imagen,Habilitado) values('" + estilo.Descripcion + "','" + estilo.Url_Imagen + "','" + estilo.Habilitado + "')");
            // estilos ahora tiene un UrlImagen entonces podemos usar el boton que nos mostro maxi apra agregar imagenes, guardarlas en una carpeta, traer la ruta y la ruta la enviamos
            // a la BD con este insert tambien
            conexion.Desconectar();
            return rowsAfectadas;
        }
        public string BuscarImagen(string titulo)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            SqlDataReader lectura = conexion.Consulta_Rapida("Select Url_Image From Prearmado Where Titulo = " + titulo + " )");

            lectura.Read();
            string UrlImagen;
            UrlImagen = lectura.GetString(0);
            conexion.Desconectar();
            return UrlImagen;

        }

        public List<Estilo> Listar()
        {
            List<Estilo> lista = new List<Estilo>();
            ConexionMSSQL conexion = new ConexionMSSQL();
            var lectura = conexion.Consulta_Rapida("select * from Estilos");

            while (lectura.Read())
            {
                Estilo est = new Estilo();
                est.Id = lectura.GetInt16(0);
                est.Descripcion = lectura.GetString(1);
                est.Url_Imagen = lectura.GetString(2);
                lista.Add(est);
            }
            conexion.Desconectar();
            return lista;
        }

        public int Eliminar(Int16 id)//este delete se va a convertir en update de habilitado con un trigger (instead of delete)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("Delete from Estilos where ID =" + id);
            conexion.Desconectar();
            return rowsAfectadas;
        }

        public int Modificar(Estilo estilo)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("update Estilos set Descripcion='" + estilo.Descripcion + "',Url_Imagen='" + estilo.Url_Imagen + "',Habilitado=" + Convert.ToInt16(estilo.Habilitado) + " Where ID=" + estilo.Id);
            conexion.Desconectar();
            return rowsAfectadas;
        }
    }
}
