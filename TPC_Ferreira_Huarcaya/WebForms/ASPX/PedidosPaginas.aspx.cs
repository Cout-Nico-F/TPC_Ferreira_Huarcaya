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
        public Usuario IDUsuario { get; set; }
        public List<VistaPedidoPersonalizado> PedidosPersonalizados { get; set; }
        public List<PedidoWebPage> PedidoPrediseniado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Request.QueryString["idPedidoPers"] != null)
                {
                    var idPersonalizado = Convert.ToInt16(Request.QueryString["idPedidoPers"]);
                    PedidoPersonalizadoNegocio pedNeg = new PedidoPersonalizadoNegocio();
                IDUsuario = (Usuario)Session["usersession"];
                pedNeg.EliminarPedidoPersonalizado(idPersonalizado);
                    Response.Redirect("PedidosPaginas.aspx?idUsuario="+ IDUsuario.ID);
                }
                if (Request.QueryString["idPedidoPred"] != null)
                {
                    var idPrediseniado = Convert.ToInt16(Request.QueryString["idPedidoPred"]);
                    PedidosWebPageNegocio pedNeg = new PedidosWebPageNegocio();
                IDUsuario = (Usuario)Session["usersession"];
                pedNeg.EliminarPedidoPrediseniado(idPrediseniado);
                    Response.Redirect("PedidosPaginas.aspx?idUsuario=" + IDUsuario.ID);
                 }

            IDUsuario = (Usuario)Session["usersession"];
            CargarListaPedidosPersonalizados();
            CargarListaPedidosPrediseniados();
        }
        void CargarListaPedidosPersonalizados()
        {
            PedidoPersonalizadoNegocio pedNeg = new PedidoPersonalizadoNegocio();

            PedidosPersonalizados = pedNeg.ListarVistasSegunID(IDUsuario.ID);
            
        }
        void CargarListaPedidosPrediseniados()
        {
            PedidosWebPageNegocio pedNeg = new PedidosWebPageNegocio();

            PedidoPrediseniado = pedNeg.TraerPedidosSegunID(IDUsuario.ID);
        }

    }
}