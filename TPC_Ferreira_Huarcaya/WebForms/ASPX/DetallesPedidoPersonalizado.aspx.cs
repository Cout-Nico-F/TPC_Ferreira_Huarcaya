using Modelo;
using Negocio;
using System;
using System.Collections.Generic;

namespace WebForms.ASPX
{
    public partial class DetallesPedidoPersonalizado : System.Web.UI.Page
    {
        Int16 idPedido;
        public PedidoPaginaPersonalizada PedidoSeleccionado { get; set; }
        public List<Funcionalidad> Funcionalidades { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idPedido"] == null)
            {
                Response.Redirect("Home.aspx");//solo se puede entrar a esta pagina llegando con una id por url.
            }
            idPedido =Convert.ToInt16 ( Request.QueryString["idPedido"] );
            CargarPedidoSeleccionado();
            CargarFuncionalidades();
        }

        void CargarPedidoSeleccionado()
        {
            PedidoPersonalizadoNegocio pneg = new PedidoPersonalizadoNegocio();
            List<PedidoPaginaPersonalizada> listaPedidos = pneg.ListarPedidos();
            PedidoSeleccionado =  listaPedidos.Find(p => p.Id == idPedido);
        }
        void CargarFuncionalidades()
        {
            PedidoPersonalizadoNegocio pneg = new PedidoPersonalizadoNegocio();
            Funcionalidades = pneg.ListarFuncionalidades(idPedido);
        }
    }
}