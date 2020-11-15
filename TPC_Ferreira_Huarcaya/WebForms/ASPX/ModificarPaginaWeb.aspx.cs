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
    public partial class ModificarPaginaWeb : System.Web.UI.Page
    {
        protected int idRecibido;
        public PaginaWeb PaginaSeleccionada { get; set; }
        public PaginasWebNegocios pagNeg { get; set; }
        public ModificarPaginaWeb()
        {
            pagNeg = new PaginasWebNegocios();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["idPaginaWeb"] == null)
            {
                Response.Redirect("Error.aspx");
            }
            idRecibido = Convert.ToInt16(Request.QueryString["idPaginaWeb"]);

            var listaPaginasWeb = pagNeg.listaPaginassWeb();

            PaginaSeleccionada = listaPaginasWeb.Find(pag => idRecibido == pag.ID);

            txtTitulo.Text = PaginaSeleccionada.Titulo;
            txtDescripcion.Text = PaginaSeleccionada.Descripcion;
            txtUrlPaginaWeb.Text = PaginaSeleccionada.Url_PaginaWeb;
            txtUrlImagen.Text = PaginaSeleccionada.Url_Imagen;

        }

        protected void btn_Cambios_Click(object sender, EventArgs e)
        {
            PaginaWeb pag = new PaginaWeb();
            pag.ID = PaginaSeleccionada.ID;
            pag.Titulo = txtTitulo.Text;
            pag.Descripcion = txtDescripcion.Text;
            pag.Url_PaginaWeb = txtUrlPaginaWeb.Text;
            pag.Url_Imagen = txtUrlImagen.Text;

            int rowsAfectados = Modificar(pag);
            if(rowsAfectados != 0)
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