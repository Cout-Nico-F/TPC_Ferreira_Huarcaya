using Negocio;
using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.ASPX
{
    public partial class PedidosPaginas : System.Web.UI.Page
    {
        public Int16 IDUsuario { get; set; }
        public List<VistaPedidoPersonalizado> PedidosPersonalizados { get; set; }
        public List<PedidoWebPage> PedidoPrediseniado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["idPedidoPers"] != null)
                {
                    var idPersonalizado = Convert.ToInt16(Request.QueryString["idPedidoPers"]);
                    PedidoPersonalizadoNegocio pedNeg = new PedidoPersonalizadoNegocio();
                    pedNeg.EliminarPedidoPersonalizado(idPersonalizado);
                    Response.Redirect("PedidosPaginas.aspx");
                }
                if (Request.QueryString["idPedidoPred"] != null)
                {
                    var idPrediseniado = Convert.ToInt16(Request.QueryString["idPedidoPred"]);
                    PedidosWebPageNegocio pedNeg = new PedidosWebPageNegocio();
                    pedNeg.EliminarPedidoPrediseniado(idPrediseniado);
                    Response.Redirect("PedidosPaginas.aspx");
                }
            }

            IDUsuario = Convert.ToInt16(Request.QueryString["idUsuario"]);
            
            CargarListaPedidosPersonalizados();
            CargarListaPedidosPrediseniados();
        }
        void CargarListaPedidosPersonalizados()
        {
            PedidoPersonalizadoNegocio pedNeg = new PedidoPersonalizadoNegocio();

            PedidosPersonalizados = pedNeg.ListarVistasSegunID(IDUsuario);
            
        }
        void CargarListaPedidosPrediseniados()
        {
            PedidosWebPageNegocio pedNeg = new PedidosWebPageNegocio();

            PedidoPrediseniado = pedNeg.TraerPedidosSegunID(IDUsuario);
        }

    }
}