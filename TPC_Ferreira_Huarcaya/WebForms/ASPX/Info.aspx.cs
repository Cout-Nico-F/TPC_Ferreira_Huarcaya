using Modelo;
using Negocio;
using System;
using System.Collections.Generic;

namespace WebForms.ASPX
{
    public partial class Contacto : System.Web.UI.Page
    {
        public List<Usuario> listaInfo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                InformacionNegocio infoNeg = new InformacionNegocio();

                if (Session["listadoInfo"] == null)
                {
                    listaInfo = infoNeg.ListarInfo();
                }
                else
                {
                    listaInfo = (List<Usuario>)Session["listadoInfo"];
                    Session["listadoInfo"] = null;
                }
            }
            catch (Exception ex)
            {

                Session.Add("errorEncontrado", ex.ToString());
                Response.Redirect("Error.aspx");

            }


        }
    }
}