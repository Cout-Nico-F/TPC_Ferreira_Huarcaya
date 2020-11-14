using System.Data.SqlClient;
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
    }
}
