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
        public Usuario Usuario { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

             Usuario = (Usuario)Session["usersession"];
           
            try
            {
                PaginasWebNegocios pagNegocio = new PaginasWebNegocios();
                if (Session["listadoBuscados"] == null)
                {
                    Lista = pagNegocio.listaPaginassWeb();
                }
                else
                {
                    Lista = ((List<PaginaWeb>)Session["listadoBuscados"]);
                    Session["listadoBuscados"] = null;
                }
            }
            catch (Exception ex)
            {

                Session.Add("errorEncontrado", ex.ToString());
                Response.Redirect("Error.aspx");
            }


        }

        protected void txt_Buscar_TextChanged(object sender, EventArgs e)
        {
            List<PaginaWeb> listaBuscador = new List<PaginaWeb>();

            if (Session["listadoBuscados"] == null)
            {
                Session.Add("listadoBuscados", listaBuscador);
            }

            listaBuscador = Lista;
            listaBuscador = Lista.FindAll(
                page => page.Titulo.ToUpper().Contains(txt_Buscar.Text.ToUpper()));

            Session["listadoBuscados"] = listaBuscador;
            
            Response.Redirect("Catalogo.aspx");
        }

    }
}