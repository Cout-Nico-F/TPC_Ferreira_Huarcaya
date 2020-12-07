using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX
{
    public partial class DetallePedidoPrediseniado : System.Web.UI.Page
    {
        Int16 idUsuario;
        public DatosPersonales DatosUsuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idUsuario"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            idUsuario = Convert.ToInt16(Request.QueryString["idUsuario"]);
            CargarDatosUsuarioPedido();
        }
        void CargarDatosUsuarioPedido()
        {
            DatosPersonalesNegocios datNeg = new DatosPersonalesNegocios();
            DatosUsuario = datNeg.TraerDatos(idUsuario);
        }
    }
}