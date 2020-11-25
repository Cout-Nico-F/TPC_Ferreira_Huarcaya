using Modelo;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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