using Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;


namespace Negocio
{
    public class PedidosWebPageNegocio
    {
        public void AgregarPedido(PedidoWebPage pedido)
        {
            using (SqlConnection sql = new SqlConnection("data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi"))
            {
                using (SqlCommand cmd = new SqlCommand("SP_PedidoPaginaWebPrediseniada", sql))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@ID_Usuario", pedido.Id_Cliente));//pedido.Id_Cliente
                    cmd.Parameters.Add(new SqlParameter("@ID_PaginaWeb", pedido.Id_WebPage));
                    cmd.Parameters.Add(new SqlParameter("@Precio", pedido.Precio));
                    cmd.Parameters.Add(new SqlParameter("@Comentarios", pedido.Comentarios));
                    cmd.Parameters.Add(new SqlParameter("@Estado", 1)); //cuando se crea un pedido siempre lo va a mandar activo
                    sql.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
        public List<PedidoWebPage> TraerPedidos()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            List<PedidoWebPage> listaPedidos = new List<PedidoWebPage>();

            var lectura = conexion.Consulta_Rapida("Select * From PedidosPaginaPrediseniada");

            while (lectura.Read())
            {
                PedidoWebPage aux = new PedidoWebPage();
                aux.Id = lectura.GetInt16(0);
                aux.Id_Cliente = lectura.GetInt16(1);
                aux.Id_WebPage = lectura.GetInt16(2);
                aux.Precio = lectura.GetInt32(3);

                var auxFecha = lectura.GetDateTime(4);
                aux.FechaPedido = auxFecha.ToShortDateString();

                aux.Comentarios = lectura.GetString(5);
                aux.Estado = lectura.GetBoolean(6);

                listaPedidos.Add(aux);
            }
            conexion.Desconectar();
            return listaPedidos;
        }
        public List<PedidoWebPage> TraerPedidosSegunID(Int16 id)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            List<PedidoWebPage> listaPedidos = new List<PedidoWebPage>();

            var lectura = conexion.Consulta_Rapida("Select * From PedidosPaginaPrediseniada Where ID_Usuario="+id);

            while (lectura.Read())
            {
                PedidoWebPage aux = new PedidoWebPage();
                aux.Id = lectura.GetInt16(0);
                aux.Id_Cliente = lectura.GetInt16(1);
                aux.Id_WebPage = lectura.GetInt16(2);
                aux.Precio = lectura.GetInt32(3);

                var auxFecha = lectura.GetDateTime(4);
                aux.FechaPedido = auxFecha.ToShortDateString();

                aux.Comentarios = lectura.GetString(5);
                aux.Estado = lectura.GetBoolean(6);

                listaPedidos.Add(aux);
            }
            conexion.Desconectar();
            return listaPedidos;
        }
        public void EliminarPedidoPrediseniado( Int16 idPagina)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            conexion.SentenciaNonQuery("update PedidosPaginaPrediseniada set Estado = 0 Where ID="+idPagina);
            conexion.Desconectar();
        }
    }
}
