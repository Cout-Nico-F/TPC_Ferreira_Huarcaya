using System.Net.Mail;
using System.Net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Negocio;

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
            lbl_Titulo_Catalogo.Text = "";
            lbl_Titulo_Card_Catalogo.Text = "";
            lbl_Url_Imagen_Catalogo.Text = "";
            lbl_Descripcion_Catalogo.Text = "";
            lbl_Precio_Catalogo.Text = "";

            if (ValidarInputsID2())
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
                RellenoIngresado.Precio_Catalogo = Convert.ToInt32(txt_Precio_Catalogo.Text);

                Session.Add("relleno", RellenoIngresado);
                Response.Write("<script>window.open ('/Templates Prefabricados/Template_B_Home.aspx','_blank');</script>");
            }
        }
        protected void btn_Rellenar3_Click(object sender, EventArgs e)
        {
            //Home
            RellenoIngresado.Url_Logo = txt_Logo.Text;
            RellenoIngresado.Nombre_Categoria1 = txt_NombreCategoria1.Text;
            RellenoIngresado.Url_Video1_Categoria1 = txt_UrlVideo1.Text;
            RellenoIngresado.Url_Video2_Categoria1 = txt_UrlVideo2.Text;
            RellenoIngresado.Url_Video3_Categoria1 = txt_UrlVideo3.Text;

            RellenoIngresado.Nombre_Categoria2 = txt_NombreCategoria2.Text;
            RellenoIngresado.Url_Video1_Categoria2 = txt_UrlVideo4.Text;
            RellenoIngresado.Url_Video2_Categoria2 = txt_UrlVideo5.Text;
            RellenoIngresado.Url_Video3_Categoria2 = txt_UrlVideo6.Text;

            //Contacto
            RellenoIngresado.Direccion = txt_Direccion.Text;
            RellenoIngresado.Telefono = txt_Telefono.Text;
            RellenoIngresado.Email = txt_Email.Text;

            Session.Add("relleno", RellenoIngresado);
            Response.Write("<script>window.open ('/Templates Prefabricados/Template_C_Home.aspx','_blank');</script>");
        }

        private bool ValidarInputsID3()
        {
            if (txt_Logo.Text == "")
            {
                txt_Logo.BackColor = System.Drawing.Color.Red;
                txt_Logo.ForeColor = System.Drawing.Color.White;
                lbl_logo.Text = "Ingrese el url del logo";
            }
        }

        private bool ValidarInputsID2()
        {
            if (txt_Nombre_Pagina.Text == "")
            {
                lbl_NombrePagina.BackColor = System.Drawing.Color.Red;
                lbl_NombrePagina.ForeColor = System.Drawing.Color.White;
                lbl_NombrePagina.Text = "Ingrese el nombre de su pagina";
                return false;
            }
            if (txt_Url_Pagina.Text == "")
            {
                lbl_url_Pagina.BackColor = System.Drawing.Color.Red;
                lbl_url_Pagina.ForeColor = System.Drawing.Color.White;
                lbl_url_Pagina.Text = "Ingrese la url del logo de su pagina";
                return false;
            }
            if(txt_titulo_carousel1.Text == "")
            {
                lbl_Titulo.BackColor = System.Drawing.Color.Red;
                lbl_Titulo.ForeColor = System.Drawing.Color.White;
                lbl_Titulo.Text = "Ingrese el Titulo de la pagina 1";
                return false;
            }
            if(txt_url1.Text == "")
            {
                lbl_Imagen.BackColor = System.Drawing.Color.Red;
                lbl_Imagen.ForeColor = System.Drawing.Color.White;
                lbl_Imagen.Text = "Ingrese una url para imagen 1";
                return false;
            }
            if(txt_titulo_carousel2.Text == "")
            {
                lbl_Titulo2.BackColor = System.Drawing.Color.Red;
                lbl_Titulo2.ForeColor = System.Drawing.Color.White;
                lbl_Titulo2.Text = "Ingrese el Titulo de la pagina 2";
                return false;
            }
            if(txt_url2.Text == "")
            {
                lbl_Imagen2.BackColor = System.Drawing.Color.Red;
                lbl_Imagen2.ForeColor = System.Drawing.Color.White;
                lbl_Imagen2.Text = "Ingrese una url para Imagen 2";
                return false;
            }
            if (txt_Titulo_Catalogo.Text == "")
            {
                txt_Titulo_Catalogo.BackColor = System.Drawing.Color.Red;
                txt_Titulo_Catalogo.ForeColor = System.Drawing.Color.White;
                lbl_Titulo_Catalogo.Text = "Ingrese un titulo para el catalogo";
                return false;
            }
            if (txt_Titulo_Card_Catalogo.Text == "")
            {
                txt_Titulo_Card_Catalogo.BackColor = System.Drawing.Color.Red;
                txt_Titulo_Card_Catalogo.ForeColor = System.Drawing.Color.White;
                lbl_Titulo_Card_Catalogo.Text = "Ingrese el titulo de esta tarjeta en el catalogo";
                return false;
            }
            if (txt_Url_Imagen_Catalogo.Text == "")
            {
                txt_Url_Imagen_Catalogo.BackColor = System.Drawing.Color.Red;
                txt_Url_Imagen_Catalogo.ForeColor = System.Drawing.Color.White;
                lbl_Url_Imagen_Catalogo.Text = "Ingrese el url para la imagen de esta tarjeta";
                return false;
            }
            if (txt_Descripcion_Catalogo.Text == "")
            {
                txt_Descripcion_Catalogo.BackColor = System.Drawing.Color.Red;
                txt_Descripcion_Catalogo.ForeColor = System.Drawing.Color.White;
                lbl_Descripcion_Catalogo.Text = "Ingrese la descripcion de esta tarjeta";
                return false;
            }
            if (txt_Precio_Catalogo.Text == "")
            {
                txt_Precio_Catalogo.BackColor = System.Drawing.Color.Red;
                txt_Precio_Catalogo.ForeColor = System.Drawing.Color.White;
                lbl_Precio_Catalogo.Text = "Ingrese el precio de este item del catalogo";
                return false;
            }
            return true;
        }

        protected void btn_Enviar_Click(object sender, EventArgs e)
        {
            EmailNegocios email = new EmailNegocios();

            email.enviar();

            Response.Redirect("Catalogo.aspx");
        }
    }
}