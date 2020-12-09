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
            /* Si estas logeado solo te aparece el boton entonces esto no es necesario por ahora 
            if(Session["usersession"] != null)
            {
                Response.Redirect("InicioSesion.aspx");
            }*/
            if(Request.QueryString["idUsuario"] != null)
            {
                IDUsuario = Convert.ToInt16(Request.QueryString["idUsuario"]);
            }
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