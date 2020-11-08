using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Modelo;

namespace WebForms.ASPX
{
    public partial class Catalogo : System.Web.UI.Page
    {
        public List<PaginaWeb> Lista { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            PaginasWebNegocios pagNegocio = new PaginasWebNegocios();
            if(Session["listado"] == null)
            {
                Lista = pagNegocio.listaPaginassWeb();
            }
            else
            {
                Lista = ((List<PaginaWeb>) Session["listado"]);
                Session["listado"] = null;
            }
        }
    }
}