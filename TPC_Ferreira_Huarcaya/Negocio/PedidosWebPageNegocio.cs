using Modelo;
using System.Data.SqlClient;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


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
                    cmd.Parameters.Add(new SqlParameter("@ID_Usuario",pedido.Id_Cliente));//pedido.Id_Cliente
                    cmd.Parameters.Add(new SqlParameter("@ID_PaginaWeb", pedido.Id_WebPage));
                    cmd.Parameters.Add(new SqlParameter("@Precio", pedido.Precio));
                    cmd.Parameters.Add(new SqlParameter("@Comentarios", pedido.Comentarios));
                    sql.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}
