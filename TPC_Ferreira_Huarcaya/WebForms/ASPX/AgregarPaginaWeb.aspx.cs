using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX
{
    public partial class Agregar_PaginaWeb : System.Web.UI.Page
    {
        public PaginaWeb PaginaWebVistaPrevia { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            FiltrarAcceso();
            if (PaginaWebVistaPrevia == null)
            {
                PaginaWebVistaPrevia = new PaginaWeb();
            }
        }

        protected void btn_Cambios_Click(object sender, EventArgs e)
        {
            LimpiarLabels();

            if (Validaciones())
            {

                PaginaWeb pag = new PaginaWeb();
                PaginasWebNegocios pagNeg = new PaginasWebNegocios();

                //string Ruta = WebConfigurationManager.AppSettings["ImageFolder"] + "prueba1.jpg";
                //fileImagen.PostedFile.SaveAs(Ruta);

                pag.Titulo = txtTitulo.Text;
                pag.Descripcion = txtDescripcion.Text;
                pag.Url_PaginaWeb = txtUrlPagina.Text;
                pag.Url_Imagen = txtUrlImagen.Text;
                pag.Habilitado = true; //una pagina recien ingresada siempre empieza habilitada
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
            if (Validaciones())
            {
                PaginaWebVistaPrevia.Titulo = txtTitulo.Text;
                PaginaWebVistaPrevia.Descripcion = txtDescripcion.Text;
                // PaginaWebVistaPrevia.Url_Imagen = Ruta
            }
        }

        private bool Validaciones()
        {
            if (txtTitulo.Text == "")
            {
                lblTitulo.Text = "El campo titulo esta vacio";
                return false;
            }
            if (txtDescripcion.Text == "")
            {
                lblDescripcion.Text = "El campo descripcion esta vacio";
                return false;
            }
            if (txtPrecio.Text == "")
            {
                lblPrecio.Text = "El campo Precio esta vacio";
                return false;
            }
            return true;
        }
        private void LimpiarLabels()
        {
            lblTitulo.Text = "";
            lblDescripcion.Text = "";
            lblPrecio.Text = "";
        }
        void FiltrarAcceso()
        {
            if (Session["usersession"] == null)//si no hay usuario en la sesion, ir a Log-in
            {
                Response.Redirect("InicioSesion.aspx");
            }
            Usuario usuario = (Usuario)Session["usersession"];
            if (usuario == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            else if (usuario.Id_Acceso != 3)//verificar el tipo de acceso para poder ver la pagina.
            {
                Response.Redirect("Home.aspx");
            }
        }

    }
}