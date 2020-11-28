using Negocio;
using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.ASPX
{
    public partial class PaginaPrediseniada01 : System.Web.UI.Page
    {
        public Relleno RellenoPagina { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (RellenoPagina == null)
            {
                RellenoPagina = new Relleno();
            }
        }

        protected void btn_VistaPrevia_Click(object sender, EventArgs e)
        {
           //Relleno rellenoPagina = new Relleno();

            RellenoPagina.Titulo = txt_titulo.Text;
            RellenoPagina.Nombre_Pagina = txt_NombrePagina.Text;
            RellenoPagina.Titulo_Home = txt_tituloHome.Text;
            RellenoPagina.Url_Imagen_Home = txt_UrlHome.Text;
            RellenoPagina.Texto_Contacto = txt_TextoContacto.Text;
            RellenoPagina.Email = txt_Email.Text;
            RellenoPagina.Telefono = txt_Telefono.Text;
            RellenoPagina.Direccion = txt_Direccion.Text;
        }
    }
}