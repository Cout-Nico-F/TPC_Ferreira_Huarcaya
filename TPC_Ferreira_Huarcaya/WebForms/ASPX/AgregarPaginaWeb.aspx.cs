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
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        protected void btn_Cambios_Click(object sender, EventArgs e)
        {
            PaginaWeb pag = new PaginaWeb();
            PaginasWebNegocios pagNeg = new PaginasWebNegocios();

            pag.Titulo = txtTitulo.Text;
            pag.Descripcion = txtDescripcion.Text;
            pag.Url_PaginaWeb = txtUrlPagina.Text;
            //tambien tengo que cargar la url imagen

            int rowsAfectados = pagNeg.EnviarDatos(pag);
            
            if(rowsAfectados > 0)
            {
                Response.Redirect("Catalogo.aspx");
            }
            else
            {
                Response.Redirect("Error.aspx");
            }

        }
    }
}