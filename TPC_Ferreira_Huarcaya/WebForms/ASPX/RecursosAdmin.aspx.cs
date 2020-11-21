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
    public partial class RecursosAdmin : System.Web.UI.Page
    {
        public Usuario Usuario { get; set; }
        public List<PaginaWeb> ListaPaginasWeb { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Request.QueryString["idPaginaWeb"] != null)
            {
                PaginasWebNegocios pagNeg = new PaginasWebNegocios();
                Int16 idRecibido = Convert.ToInt16(Request.QueryString["idPaginaWeb"]);

                int rows = pagNeg.Restaurar(idRecibido);
                if(rows > 0)
                {
                    Response.Redirect("RecursosAdmin.aspx");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
            try
            {
                PaginasWebNegocios pagNegocio = new PaginasWebNegocios();
                ListaPaginasWeb = pagNegocio.listaPaginassWeb();
            }
            catch (Exception ex)
            {

                Session.Add("errorEncontrado", ex.ToString());
                Response.Redirect("Error.aspx");
            }

        }

        protected void btn_Consulta_Click(object sender, EventArgs e)
        {

        }
    }
}