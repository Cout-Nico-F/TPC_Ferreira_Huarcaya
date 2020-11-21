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
    public partial class RestaurarPaginaWeb : System.Web.UI.Page
    {
        protected int idRecibido;
        public PaginaWeb PaginaSeleccionada { get; set; }
        public PaginasWebNegocios pagNeg { get; set; }
        public RestaurarPaginaWeb()
        {
            pagNeg = new PaginasWebNegocios();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idPaginaWeb"] == null)
            {
                Response.Redirect("Error.aspx");
            }

            Int16 idRecibido = Convert.ToInt16(Request.QueryString["idPaginaWeb"]);

            var listaPaginasWeb = pagNeg.listaPaginassWeb();

            PaginaSeleccionada = listaPaginasWeb.Find(pag => idRecibido == pag.ID);
        }

        protected void btn_Confirmar_Click(object sender, EventArgs e)
        {
            pagNeg.Restaurar(PaginaSeleccionada.ID);
            Response.Redirect("RecursosAdmin.aspx");
        }
    }
}