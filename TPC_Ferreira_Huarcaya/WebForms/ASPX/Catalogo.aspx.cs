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

        public PaginaWeb Buscador { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                PaginasWebNegocios pagNegocio = new PaginasWebNegocios();
                if (Session["listado"] == null)
                {
                    Lista = pagNegocio.listaPaginassWeb();
                }
                else
                {
                    Lista = ((List<PaginaWeb>)Session["listado"]);
                    Session["listado"] = null;
                }
            }
            catch (Exception ex)
            {

                Session.Add("errorEncontrado",ex.ToString());
                Response.Redirect("Error.aspx");
            }
           
        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            List<PaginaWeb> listaBuscador = new List<PaginaWeb>();

            if(Session["listaBuscados"] == null)
            {
                Session.Add("listadoBuscados", listaBuscador);
            }
            /*
             Como va a buscar por Titulo entonces deberiamos hacer los totulos de las paginas mas explicativos
             Los que tenemos ahi son de prueba, los iremos mejorando mas delante
             */
            listaBuscador = Lista;
            listaBuscador = Lista.FindAll(
                page => page.Titulo.ToUpper().Contains(txt_buscar.Text.ToUpper())
            );
            Session["listaBuscados"] = listaBuscador;

            /*Esto es para que recargue la pagina no?*/
            Response.Redirect("Catalogo.aspx");
        }
    }
}