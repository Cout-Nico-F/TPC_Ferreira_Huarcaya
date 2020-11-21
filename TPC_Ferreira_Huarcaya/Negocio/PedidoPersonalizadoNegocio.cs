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
    public class PedidoPersonalizadoNegocio
    {
        public void AgregarPedido(PedidoPaginaPersonalizada pedido)
        {
            using (SqlConnection sql = new SqlConnection("data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi"))
            {
                using (SqlCommand cmd = new SqlCommand("SP_PedidoPaginaWebPersonalizada", sql))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@ID_Usuario",pedido.Id_Cliente));//pedido.Id_Cliente
                    cmd.Parameters.Add(new SqlParameter("@ID_Estilo", pedido.ID_Estilo));
                    cmd.Parameters.Add(new SqlParameter("@PrecioTotal", pedido.Precio));
                    cmd.Parameters.Add(new SqlParameter("@Comentarios", pedido.Comentarios));
                    SqlParameter returnParameter = cmd.Parameters.Add("RetVal", SqlDbType.SmallInt); //cambio
                    sql.Open();
                    returnParameter.Direction = ParameterDirection.ReturnValue; //cambio
                    cmd.ExecuteNonQuery();

                    Int16 idPedidoPersonalizado = Convert.ToInt16(returnParameter.Value);// cambio

                    sql.Close(); //esto no estaba antes si da error sacalo cambio

                    //TODO: Esto es una manera que encontre probalo y decime si funciona falta agregarle un return
                }
            }
        }
    }
}
