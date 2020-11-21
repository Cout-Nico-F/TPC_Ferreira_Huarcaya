using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Negocio
{
    public class PedidosWebPageNegocio
    {
        public int AgregarPedido(PedidoWebPage pedido)
        {
            //falta convertir el datetime a DATE de sql server. (asi como esta ahora tira error, debe ser por la hora que trae datetime)
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("insert into PedidosPaginaPrediseniada(Id_usuario, id_paginaweb, precio, fecha, comentarios) values(" + pedido.Id_Cliente + "," + pedido.Id_WebPage + "," + pedido.Precio + ",'" + pedido.Fecha + "','" + pedido.Comentarios + "')");
            conexion.Desconectar();
            return rowsAfectadas;
        }
    }
}
