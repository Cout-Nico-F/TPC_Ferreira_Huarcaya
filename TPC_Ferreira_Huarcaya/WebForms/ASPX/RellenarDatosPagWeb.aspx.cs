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
            lbl_NombrePagina.Text = "";
            lbl_url_Pagina.Text = "";
            lbl_Titulo.Text = "";
            lbl_Imagen.Text = "";
            lbl_Titulo2.Text = "";
            lbl_Imagen2.Text = "";

            if (ValidarLabel())
            {
                //Pagina
                RellenoIngresado.Nombre_Pagina = txt_Nombre_Pagina.Text;
                RellenoIngresado.Url_Logo_Pagina = txt_Url_Pagina.Text;

                //Carosusel
                RellenoIngresado.Titulo_Pagina1 = txt_titulo_carousel1.Text;
                RellenoIngresado.Url_Imagen_Home = txt_url1.Text;
                RellenoIngresado.Titulo_Pagina2 = txt_titulo_carousel2.Text;
                RellenoIngresado.Url_Imagen_Home2 = txt_url2.Text;

                //Catalogo
                RellenoIngresado.Titulo_Catalogo = txt_Titulo_Catalogo.Text;
                RellenoIngresado.Titulo_Card_Catalogo = txt_Titulo_Card_Catalogo.Text;
                RellenoIngresado.url_Imagen_Catalogo = txt_Url_Imagen_Catalogo.Text;
                RellenoIngresado.Descripcion_Catalogo = txt_Descripcion_Catalogo.Text;

                Session.Add("relleno", RellenoIngresado);
                Response.Write("<script>window.open ('/Templates Prefabricados/Template_B_Home.aspx','_blank');</script>");
            }
        }

        private bool ValidarLabel()
        {
            if (txt_Nombre_Pagina.Text == "")
            {
                lbl_NombrePagina.Text = "Ingrese el nombre de su pagina";
                return false;
            }
            if (txt_Url_Pagina.Text == "")
            {
                lbl_url_Pagina.Text = "Ingrese la url del logo de su pagina";
                return false;
            }
            if(txt_titulo_carousel1.Text == "")
            {
                lbl_Titulo.Text = "Ingrese el Titulo de la pagina 1";
                return false;
            }
            if(txt_url1.Text == "")
            {
                lbl_Imagen.Text = "Ingrese una url para imagen 1";
                return false;
            }
            if(txt_titulo_carousel2.Text == "")
            {
                lbl_Titulo2.Text = "Ingrese el Titulo de la pagina 2";
                return false;
            }
            if(txt_url2.Text == "")
            {
                lbl_Imagen2.Text = "Ingrese una url para Imagen 2";
                return false;
            }
            return true;
        }
    }
}