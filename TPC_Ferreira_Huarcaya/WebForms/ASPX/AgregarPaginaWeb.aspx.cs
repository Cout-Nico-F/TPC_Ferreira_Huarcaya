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
   
    public partial class Agregar_PaginaWeb : System.Web.UI.Page
    {
        protected int idRecibido;
        public PaginaWeb PaginaSeleccionada { get; set; }
        public PaginasWebNegocios PagNeg { get; set; }
        public Agregar_PaginaWeb()
        {
            PagNeg = new PaginasWebNegocios();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["idPaginaWeb"] == null)
            {
                Response.Redirect("Error.aspx");
            }
            idRecibido = Convert.ToInt16(Request.QueryString["idPaginaWeb"]);

            var listaPaginasWeb = PagNeg.listaPaginassWeb();
            PaginaSeleccionada = listaPaginasWeb.Find(pag => idRecibido == pag.ID); 
            
        }
    }
}