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
            lblTitulo.Text = "";
            lblDescripcion.Text = "";
            lblPrecio.Text = "";
            //esto es por ahora deberia ser un clear de los label

            if (Validaciones())
            {
                
                PaginaWeb pag = new PaginaWeb();
                PaginasWebNegocios pagNeg = new PaginasWebNegocios();

                string ruta = WebConfigurationManager.AppSettings["ImageFolder"] + "prueba.jpg" ;
                fileImagen.PostedFile.SaveAs(ruta);
             
                pag.Titulo = txtTitulo.Text;
                pag.Descripcion = txtDescripcion.Text;
                pag.Url_PaginaWeb = txtUrlPagina.Text;
                pag.Url_Imagen = ruta;
                pag.Habilitado = true; //lo mando asi por ahora
                pag.Precio = Convert.ToInt32(txtPrecio.Text);


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

        }

        protected void txtPrevia_Click(object sender, EventArgs e)
        {
            if(Validaciones())
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

        private bool Validaciones()
        {
            if(txtTitulo.Text == "")
            {
                lblTitulo.Text = "El campos titulo esta vacio";
                return false;
            }
            if(txtDescripcion.Text == "")
            {
                lblDescripcion.Text = "El campo descripcion esta vacio";
                return false;
            }
            if(txtPrecio.Text == "")
            {
                lblPrecio.Text = "El campo Precio esta vacio";
                return false;
            }
            return true;
        }
        
    }
}