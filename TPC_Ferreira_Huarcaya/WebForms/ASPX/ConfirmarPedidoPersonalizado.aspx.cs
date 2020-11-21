using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Negocio;

namespace WebForms.ASPX
{
    public partial class ConfirmarPedidoPersonalizado : System.Web.UI.Page
    {
        public PedidoPaginaPersonalizada Pedido { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pedidoPersonalizado"] == null)
            {
                Response.Redirect("Error.aspx");
            }
            Pedido = (PedidoPaginaPersonalizada) Session["pedidoPersonalizado"];
        }
    }
}