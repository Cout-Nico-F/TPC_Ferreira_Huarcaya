using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Negocio;

namespace WebForms.ASPX.ConfirmarBajas
{
    public partial class PaginaBaja : System.Web.UI.Page
    {
        protected int idRecibido;

        public Pagina PaginaSeleccionada { get; set; }
        public PaginaNegocio PagNeg { get; set; }

        public PaginaBaja()
        {
            PagNeg = new PaginaNegocio();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idPagina"] == null)
            {
                Response.Redirect("../Home.aspx");//solo se puede entrar a esta pagina llegando con una id de pagina por url.
            }
            idRecibido = Convert.ToInt32(Request.QueryString["idPagina"]);

            var listaPaginas = PagNeg.Listar();
            PaginaSeleccionada = listaPaginas.Find(pag => idRecibido == pag.ID);
        }

        protected void btn_Baja_Pagina_Click(object sender, EventArgs e)
        {
            PagNeg.Eliminar(PaginaSeleccionada.ID);
            Response.Redirect("../PersonalizarUsuario.aspx");
        }
    }
}