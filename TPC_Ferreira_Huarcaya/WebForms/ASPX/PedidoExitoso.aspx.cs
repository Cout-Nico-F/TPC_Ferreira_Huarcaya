using System;

namespace WebForms.ASPX
{
    public partial class PedidoExitoso : System.Web.UI.Page
    {
        public Int16 IDPedido { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            IDPedido = Convert.ToInt16(Request.QueryString["id"]);
        }
    }
}