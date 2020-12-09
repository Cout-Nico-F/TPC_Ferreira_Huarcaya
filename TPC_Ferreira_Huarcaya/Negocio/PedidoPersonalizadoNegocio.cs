using Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;


namespace Negocio
{
    public class PedidoPersonalizadoNegocio
    {
        public void AgregarPedido(PedidoPaginaPersonalizada pedido)
        {
            Int16 id;

            //primero se guarda el pedido
            using (SqlConnection sql = new SqlConnection("data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi"))
            {
                using (SqlCommand cmd = new SqlCommand("SP_PedidoPaginaWebPersonalizada", sql))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@ID_Usuario", pedido.Id_Cliente));
                    cmd.Parameters.Add(new SqlParameter("@ID_Estilo", pedido.ID_Estilo));
                    cmd.Parameters.Add(new SqlParameter("@PrecioTotal", pedido.Precio));
                    cmd.Parameters.Add(new SqlParameter("@Comentarios", pedido.Comentarios));
                    cmd.Parameters.Add(new SqlParameter("@Estado", 1));
                    SqlParameter returnParameter = cmd.Parameters.Add("RetVal", SqlDbType.SmallInt);
                    sql.Open();
                    returnParameter.Direction = ParameterDirection.ReturnValue;
                    cmd.ExecuteNonQuery();

                    id = Convert.ToInt16(returnParameter.Value);
                    sql.Close();
                }
            }
            //ahora guardamos sus funcionalidades y paginas en las tablas correspondientes
            ConexionMSSQL conex = new ConexionMSSQL();
            foreach (var item in pedido.Funcionalidades)
            {
                conex.SentenciaNonQuery("insert into Funcionalidades_X_PedidosWebPage (ID_Funcionalidad,ID_Pedidowebpage) values (" + item.Id + "," + id + ")");
            }
            foreach (var item in pedido.Paginas)
            {
                conex.SentenciaNonQuery("insert into Paginas_X_PedidosWebPage (ID_Pagina,ID_Pedidowebpage) values (" + item.ID + "," + id + ")");
            }
            conex.Desconectar();
        }

        public List<VistaPedidoPersonalizado> ListarVistas()
        {
            List<VistaPedidoPersonalizado> listaVistas = new List<VistaPedidoPersonalizado>();
            ConexionMSSQL conex = new ConexionMSSQL();
            SqlDataReader reader = conex.Consulta_Rapida("select * from vw_ListaPedidos");

            while (reader.Read())
            {
                VistaPedidoPersonalizado vistaPedido = new VistaPedidoPersonalizado();
                var aux = reader.GetDateTime(0);
                vistaPedido.Fecha = aux.ToShortDateString(); //Aca le estoy sacando la hora al mostrarlo en la tabla

                vistaPedido.IdPedido = reader.GetInt16(1);
                vistaPedido.IdUsuario = reader.GetInt16(2);
                vistaPedido.Estilo = reader.GetString(3);
                vistaPedido.CantPaginas = reader.GetInt32(4);
                vistaPedido.CantFuncs = reader.GetInt32(5);

                listaVistas.Add(vistaPedido);
            }
            conex.Desconectar();
            return listaVistas;
        }

        public List<PedidoPaginaPersonalizada> ListarPedidos()
        {
            List<PedidoPaginaPersonalizada> listaPedidos = new List<PedidoPaginaPersonalizada>();
            ConexionMSSQL conex = new ConexionMSSQL();
            SqlDataReader reader = conex.Consulta_Rapida("select * from pedidoswebpage");

            while (reader.Read())
            {
                PedidoPaginaPersonalizada p = new PedidoPaginaPersonalizada();
                p.Id = reader.GetInt16(0);
                p.Id_Cliente = reader.GetInt16(1);
                p.ID_Estilo = reader.GetInt16(2);
                p.Precio = reader.GetInt32(3);
                try
                {
                    p.Comentarios = reader.GetString(4); //comentarios puede ser null
                }
                catch (Exception)
                {
                    p.Comentarios = ""; //los comentarios nulos los convierto en string vacia para poder mostrarlos
                }
                var aux = reader.GetDateTime(5);
                p.Fecha = aux.ToShortDateString();
                listaPedidos.Add(p);
            }
            conex.Desconectar();
            return listaPedidos;
        }

        public List<Funcionalidad> ListarFuncionalidades(Int16 idPedido)
        {
            List<Funcionalidad> listaFuncionalidades = new List<Funcionalidad>();
            ConexionMSSQL conex = new ConexionMSSQL();
            SqlDataReader reader = conex.Consulta_Rapida("select id, descripcion, costo, habilitado from vw_ListaFuncionalidades where idPedido =" + idPedido);
            while (reader.Read())
            {
                Funcionalidad f = new Funcionalidad();
                f.Id = reader.GetInt16(0);
                f.Descripcion = reader.GetString(1);
                f.Costo = reader.GetInt32(2);
                f.Habilitado = reader.GetBoolean(3);
                listaFuncionalidades.Add(f);
            }
            conex.Desconectar();
            return listaFuncionalidades;
        }

        public List<Pagina> ListarPaginas(Int16 idPedido)
        {
            List<Pagina> listaPaginas = new List<Pagina>();
            ConexionMSSQL conex = new ConexionMSSQL();
            SqlDataReader reader = conex.Consulta_Rapida("select id, descripcion, habilitado from vw_listapaginas where idpedido=" + idPedido);
            while (reader.Read())
            {
                Pagina p = new Pagina();
                p.ID = reader.GetInt16(0);
                p.Descripcion = reader.GetString(1);
                p.Habilitado = reader.GetBoolean(2);
                listaPaginas.Add(p);
            }
            conex.Desconectar();
            return listaPaginas;
        }

        public int GetPrecioBase()
        {
            ConexionMSSQL conex = new ConexionMSSQL();
            SqlDataReader reader = conex.Consulta_Rapida("select valor from ValoresConfigurables where descripcion = 'PrecioBase' ");
            reader.Read();
            int preciobase = reader.GetInt32(0);
            conex.Desconectar();
            return preciobase;
        }
        public int GetPrecioPorPagina()
        {
            ConexionMSSQL conex = new ConexionMSSQL();
            SqlDataReader reader = conex.Consulta_Rapida("select valor from ValoresConfigurables where descripcion = 'PrecioPorPagina' ");
            reader.Read();
            int precioPagina = reader.GetInt32(0);
            conex.Desconectar();
            return precioPagina;
        }
        public void SetPrecioBase(int precio)
        {
            ConexionMSSQL conex = new ConexionMSSQL();
            conex.SentenciaNonQuery("update ValoresConfigurables set valor = " + precio + " where descripcion = 'PrecioBase'");
            conex.Desconectar();
        }
        public void SetPrecioPorPagina(int precio)
        {
            ConexionMSSQL conex = new ConexionMSSQL();
            conex.SentenciaNonQuery("update ValoresConfigurables set valor = " + precio + " where descripcion = 'PrecioPorPagina'");
            conex.Desconectar();
        }
        public List<VistaPedidoPersonalizado> ListarVistasSegunID(Int16 id)
        {
            List<VistaPedidoPersonalizado> listaVistas = new List<VistaPedidoPersonalizado>();
            ConexionMSSQL conex = new ConexionMSSQL();
            SqlDataReader reader = conex.Consulta_Rapida("select * from vw_ListaPedidos Where id_usuario="+id);

            while (reader.Read())
            {
                VistaPedidoPersonalizado vistaPedido = new VistaPedidoPersonalizado();
                var aux = reader.GetDateTime(0);
                vistaPedido.Fecha = aux.ToShortDateString(); //Aca le estoy sacando la hora al mostrarlo en la tabla

                vistaPedido.IdPedido = reader.GetInt16(1);
                vistaPedido.IdUsuario = reader.GetInt16(2);
                vistaPedido.Estilo = reader.GetString(3);
                vistaPedido.CantPaginas = reader.GetInt32(4);
                vistaPedido.CantFuncs = reader.GetInt32(5);
                vistaPedido.Estado = reader.GetBoolean(6);

                listaVistas.Add(vistaPedido);
            }
            conex.Desconectar();
            return listaVistas;
        }
        public void EliminarPedidoPersonalizado(Int16 idPagina)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            conexion.SentenciaNonQuery("update PedidosWebPage set Estado = 0 Where ID="+idPagina);
            conexion.Desconectar();
        }
    }
}
