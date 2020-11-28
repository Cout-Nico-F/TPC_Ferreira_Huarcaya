using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace WebForms.ASPX
{
    public partial class RellenarDatosPagWeb : System.Web.UI.Page
    {
        public Relleno RellenoIngresado { get; set; }
        public int IdRecibido { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            RellenoIngresado = new Relleno();
            IdRecibido =Convert.ToInt32( Request.QueryString["id"]) ;
        }

        protected void btn_Rellenar_Click(object sender, EventArgs e)
        {
            RellenoIngresado.Titulo = txtbox_titulo.Text ;
            RellenoIngresado.Titulo_Home = txtbox_tituloHome.Text;
            RellenoIngresado.Nombre_Pagina = txtbox_nombre.Text;
            RellenoIngresado.Url_Imagen_Home = txtbox_urlImagen.Text;
            RellenoIngresado.Texto_Home = txtbox_textoHome.Text;
            RellenoIngresado.Texto_Contacto = txtbox_textoContacto.Text;
            RellenoIngresado.Email = txtbox_email.Text;
            RellenoIngresado.Telefono = txtbox_telefono.Text;
            RellenoIngresado.Direccion = txtbox_direccion.Text;
            Session.Add("relleno", RellenoIngresado);
            Response.Write("<script>window.open ('/Templates Prefabricados/Template_A_Home.aspx','_blank');</script>");
        }

        protected void btn_RellenoPagina2_Click(object sender, EventArgs e)
        {
            lbl_Titulo.Text = "";
            lbl_Imagen.Text = "";

            if (ValidarLabel())
            {
                RellenoIngresado.Titulo_Pagina1 = txt_titulo_carousel1.Text;
                RellenoIngresado.Url_Imagen_Home = txt_url1.Text;
                RellenoIngresado.Titulo_Pagina2 = txt_titulo_carousel2.Text;
                RellenoIngresado.Url_Imagen_Home2 = txt_url2.Text;
                RellenoIngresado.Titulo_Pagina3 = txt_titulo_carousel3.Text;
                RellenoIngresado.Url_Imagen_Home3 = txt_url3.Text;

                Session.Add("relleno", RellenoIngresado);
                Response.Write("<script>window.open ('/Templates Prefabricados/Template_B_Home.aspx','_blank');</script>");
            }
        }

        private bool ValidarLabel()
        {
            if(txt_titulo_carousel1.Text == "")
            {
                lbl_Titulo.Text = "Ingrese el Titulo de la pagina 1";
                return false;
            }
            if(txt_url1.Text == "")
            {
                lbl_Imagen.Text = "Ingrese una url imagen 1";
                return false;
            }
            return true;
        }
    }
}