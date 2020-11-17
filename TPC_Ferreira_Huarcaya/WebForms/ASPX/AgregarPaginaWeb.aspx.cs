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
        public PaginaWeb PaginaWebVistaPrevia { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
           if(PaginaWebVistaPrevia == null)
            {
                PaginaWebVistaPrevia = new PaginaWeb();
            }
            
        }

        protected void btn_Cambios_Click(object sender, EventArgs e)
        {
            if (!(txtTitulo.Text == "" || txtDescripcion.Text == "" ))
            {
                PaginaWeb pag = new PaginaWeb();
                PaginasWebNegocios pagNeg = new PaginasWebNegocios();

                //Lo que Maxi nos enseño
                //la ruta es distinta entre nosotros dos podriamos poner un Or o algo asi
                string ruta = WebConfigurationManager.AppSettings["ImageFolder"] + DateTime.Now.ToString("h:mm:ss tt");
                fileImagen.PostedFile.SaveAs(ruta);

                // int validacion = Validaciones();

                pag.Titulo = txtTitulo.Text;
                pag.Descripcion = txtDescripcion.Text;
                pag.Url_PaginaWeb = txtUrlPagina.Text;
                pag.Url_Imagen = ruta;
                pag.Habilitado = true; //lo mando asi por ahora
                pag.Precio = Convert.ToInt32(txtPrecio.Text);

                //tambien tengo que cargar la url imagen

                int rowsAfectados = pagNeg.EnviarDatos(pag);

                if (rowsAfectados > 0)
                {
                    Response.Redirect("Catalogo.aspx");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
            else
            {


            }
           

        }

        protected void txtPrevia_Click(object sender, EventArgs e)
        {
            if(!(txtTitulo.Text == "" || txtDescripcion.Text == "" ))
            {
                PaginaWebVistaPrevia.Titulo = txtTitulo.Text;
                PaginaWebVistaPrevia.Descripcion = txtDescripcion.Text;
                //PaginaWebVistaPrevia.Url_Imagen = txtUrlImagen.Text;
            }
            else
            {
                lblModal.CssClass = "alert alert-info";
                lblModal.Text = "hola";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "OpenModal();", true);
            }
           
        }
        
    }
}