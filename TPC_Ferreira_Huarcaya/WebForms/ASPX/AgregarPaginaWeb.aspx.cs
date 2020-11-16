using Modelo;
using Negocio;
using System.Web.Configuration;
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

            //Lo que Maxi nos enseño
            //la ruta es distinta entre nosotros dos podriamos poner un Or o algo asi
            /*string ruta = WebConfigurationManager.AppSettings["ImageFolder"] + DateTime.Now.ToString("h:mm:ss tt");
            fileImagen.PostedFile.SaveAs(ruta);*/

            pag.Titulo = txtTitulo.Text;
            pag.Descripcion = txtDescripcion.Text;
            pag.Url_PaginaWeb = txtUrlPagina.Text;
            pag.Url_Imagen = txtUrlImagen.Text;
            pag.Habilitado = true; //lo mando asi por ahora
            pag.Precio = Convert.ToInt32(txtPrecio.Text);


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