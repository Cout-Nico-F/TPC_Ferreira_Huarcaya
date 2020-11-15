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
        public Usuario Usuario { get; set; } // properti para poder usarla en el front

        protected void Page_Load(object sender, EventArgs e)
        {

             Usuario = (Usuario)Session["usersession"];
             // No es necesario el if para catalogo
             /*if (Usuario == null)
             {
                 Response.Redirect("InicioSesion.aspx");
             }*/
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

                Session.Add("errorEncontrado",ex.ToString());
                Response.Redirect("Error.aspx");
            }
           
        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
           
        }

        protected void txt_Buscar_TextChanged(object sender, EventArgs e)
        {
            List<PaginaWeb> listaBuscador = new List<PaginaWeb>();

            if (Session["listadoBuscados"] == null)
            {
                Session.Add("listadoBuscados", listaBuscador);
            }
            /*
             Como va a buscar por Titulo entonces deberiamos hacer los totulos de las paginas mas explicativos
             Los que tenemos ahi son de prueba, los iremos mejorando mas delante
             */
            listaBuscador = Lista;
            listaBuscador = Lista.FindAll(
                page => page.Titulo.ToUpper().Contains(txt_Buscar.Text.ToUpper()));
            //no funciona pero deberiamos hacerlo de otra manera para que busque coincidencias
            Session["listadoBuscados"] = listaBuscador;
            
            /*Esto es para que recargue la pagina no?*/
            Response.Redirect("Catalogo.aspx");
        }

        protected void ch_MostrarTodos_CheckedChanged(object sender, EventArgs e)
        {
            Response.Redirect("Catalogo.aspx");
        }
    }
}