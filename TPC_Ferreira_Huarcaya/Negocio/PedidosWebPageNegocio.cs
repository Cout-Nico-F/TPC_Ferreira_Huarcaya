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
        int AgregarPedido(PedidoWebPage pedido)
        {
            //todavia no esta probada la string en sql, pero creo que esta correcta.
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("insert into PedidosPaginasPrediseniadas(Id_usuario, id_paginaweb, precio, fecha, comentarios) values(" + pedido.Id_Cliente + "," + pedido.Id_WebPage + "," + pedido.Precio + ",'" + pedido.Fecha + "','" + pedido.Comentarios + "')");
            conexion.Desconectar();
            return rowsAfectadas;
        }
    }
}
