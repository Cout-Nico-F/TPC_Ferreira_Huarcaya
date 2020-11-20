using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Negocio
{
    class PedidosWebPageNegocio
    {
        void AgregarPedido( PedidoWebPage pedido )
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("insert into PedidosPäginasPrediseniadas(Descripcion, Url_Imagen,Habilitado) values('" + estilo.Descripcion + "','" + estilo.Url_Imagen + "','" + estilo.Habilitado + "')");
            // estilos ahora tiene un UrlImagen entonces podemos usar el boton que nos mostro maxi apra agregar imagenes, guardarlas en una carpeta, traer la ruta y la ruta la enviamos
            // a la BD con este insert tambien
            conexion.Desconectar();
            return rowsAfectadas;
        }
    }
}
