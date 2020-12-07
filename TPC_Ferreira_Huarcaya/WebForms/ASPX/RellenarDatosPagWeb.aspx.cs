using Modelo;
using System;

namespace WebForms.ASPX
{
    public partial class RellenarDatosPagWeb : System.Web.UI.Page
    {
        public Relleno RellenoIngresado { get; set; }
        public int IdRecibido { get; set; }

        //Validaciones para el boton solicitar
        public bool ValidarID1 { get; set; }
        public bool ValidarID2 { get; set; }
        public bool ValidarID3 { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usersession"] == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            RellenoIngresado = new Relleno();
            IdRecibido = Convert.ToInt32(Request.QueryString["id"]);
        }

        protected void btn_Rellenar_Click(object sender, EventArgs e)
        {
            lbl_titulo.Text = "";
            lbl_tituloHome.Text = "";
            lbl_nombre.Text = "";
            lbl_urlImagen.Text = "";
            lbl_textoHome.Text = "";
            lbl_textoContacto.Text = "";
            lbl_email1.Text = "";
            lbl_telefono1.Text = "";
            lbl_direccion1.Text = "";

            ValidarID1 = ValidarInputsID1();

            if (ValidarID1)
            {
                RellenoIngresado.Titulo = txtbox_titulo.Text;
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
        }
        private bool ValidarInputsID1()
        {
            if (txtbox_titulo.Text == "")
            {
                lbl_titulo.BackColor = System.Drawing.Color.Red;
                lbl_titulo.ForeColor = System.Drawing.Color.White;
                lbl_titulo.Text = "Ingrese el titulo de la pagina";
                return false;
            }
            if (txtbox_nombre.Text == "")
            {
                lbl_nombre.BackColor = System.Drawing.Color.Red;
                lbl_nombre.ForeColor = System.Drawing.Color.White;
                lbl_nombre.Text = "Ingrese el nombre de la pagina";
                return false;
            }
            if (txtbox_tituloHome.Text == "")
            {
                lbl_tituloHome.BackColor = System.Drawing.Color.Red;
                lbl_tituloHome.ForeColor = System.Drawing.Color.White;
                lbl_tituloHome.Text = "Ingrese el titulo del Home";
                return false;
            }
            if (txtbox_urlImagen.Text == "")
            {
                lbl_urlImagen.BackColor = System.Drawing.Color.Red;
                lbl_urlImagen.ForeColor = System.Drawing.Color.White;
                lbl_urlImagen.Text = "Ingrese la Url de la foto del Home";
                return false;
            }
            if (txtbox_textoHome.Text == "")
            {
                lbl_textoHome.BackColor = System.Drawing.Color.Red;
                lbl_textoHome.ForeColor = System.Drawing.Color.White;
                lbl_textoHome.Text = "Ingrese el texto del Home";
                return false;
            }
            if (txtbox_textoContacto.Text == "")
            {
                lbl_textoContacto.BackColor = System.Drawing.Color.Red;
                lbl_textoContacto.ForeColor = System.Drawing.Color.White;
                lbl_textoContacto.Text = "Ingrese el texto del Contacto";
                return false;
            }
            if (txtbox_email.Text == "")
            {
                lbl_email1.BackColor = System.Drawing.Color.Red;
                lbl_email1.ForeColor = System.Drawing.Color.White;
                lbl_email1.Text = "Ingrese el Email de Contacto";
                return false;
            }
            if (txtbox_telefono.Text == "")
            {
                lbl_telefono1.BackColor = System.Drawing.Color.Red;
                lbl_telefono1.ForeColor = System.Drawing.Color.White;
                lbl_telefono1.Text = "Ingrese el Telefono de Contacto";
                return false;
            }
            if (txtbox_direccion.Text == "")
            {
                lbl_direccion1.BackColor = System.Drawing.Color.Red;
                lbl_direccion1.ForeColor = System.Drawing.Color.White;
                lbl_direccion1.Text = "Ingrese la direccion de Contacto";
                return false;
            }
            return true;
        }

        protected void btn_RellenoPagina2_Click(object sender, EventArgs e)
        {
            lbl_Nombre_Pagina.Text = "";
            lbl_Url_Pagina.Text = "";
            lbl_titulo_carousel1.Text = "";
            lbl_url1.Text = "";
            lbl_titulo_carousel2.Text = "";
            lbl_url2.Text = "";
            lbl_Titulo_Catalogo.Text = "";
            lbl_Titulo_Card_Catalogo.Text = "";
            lbl_Url_Imagen_Catalogo.Text = "";
            lbl_Descripcion_Catalogo.Text = "";
            lbl_Precio_Catalogo.Text = "";

            ValidarID2 = ValidarInputsID2();

            if (ValidarID2)
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
        private bool ValidarInputsID2()
        {
            if (txt_Nombre_Pagina.Text == "")
            {
                lbl_Nombre_Pagina.BackColor = System.Drawing.Color.Red;
                lbl_Nombre_Pagina.ForeColor = System.Drawing.Color.White;
                lbl_Nombre_Pagina.Text = "Ingrese el nombre de su pagina";
                return false;
            }
            if (txt_Url_Pagina.Text == "")
            {
                lbl_Url_Pagina.BackColor = System.Drawing.Color.Red;
                lbl_Url_Pagina.ForeColor = System.Drawing.Color.White;
                lbl_Url_Pagina.Text = "Ingrese la url del logo de su pagina";
                return false;
            }
            if (txt_titulo_carousel1.Text == "")
            {
                lbl_titulo_carousel1.BackColor = System.Drawing.Color.Red;
                lbl_titulo_carousel1.ForeColor = System.Drawing.Color.White;
                lbl_titulo_carousel1.Text = "Ingrese el Titulo de la primer imagen del carousel";
                return false;
            }
            if (txt_url1.Text == "")
            {
                lbl_url1.BackColor = System.Drawing.Color.Red;
                lbl_url1.ForeColor = System.Drawing.Color.White;
                lbl_url1.Text = "Ingrese una url para la primer imagen del carousel";
                return false;
            }
            if (txt_titulo_carousel2.Text == "")
            {
                lbl_titulo_carousel2.BackColor = System.Drawing.Color.Red;
                lbl_titulo_carousel2.ForeColor = System.Drawing.Color.White;
                lbl_titulo_carousel2.Text = "Ingrese el Titulo de la segunda imagen del carousel";
                return false;
            }
            if (txt_url2.Text == "")
            {
                lbl_url2.BackColor = System.Drawing.Color.Red;
                lbl_url2.ForeColor = System.Drawing.Color.White;
                lbl_url2.Text = "Ingrese una url para la segunda imagen del carousel";
                return false;
            }
            if (txt_Titulo_Catalogo.Text == "")
            {
                lbl_Titulo_Catalogo.BackColor = System.Drawing.Color.Red;
                lbl_Titulo_Catalogo.ForeColor = System.Drawing.Color.White;
                lbl_Titulo_Catalogo.Text = "Ingrese un titulo para el catalogo";
                return false;
            }
            if (txt_Titulo_Card_Catalogo.Text == "")
            {
                lbl_Titulo_Card_Catalogo.BackColor = System.Drawing.Color.Red;
                lbl_Titulo_Card_Catalogo.ForeColor = System.Drawing.Color.White;
                lbl_Titulo_Card_Catalogo.Text = "Ingrese el titulo de esta tarjeta en el catalogo";
                return false;
            }
            if (txt_Url_Imagen_Catalogo.Text == "")
            {
                lbl_Url_Imagen_Catalogo.BackColor = System.Drawing.Color.Red;
                lbl_Url_Imagen_Catalogo.ForeColor = System.Drawing.Color.White;
                lbl_Url_Imagen_Catalogo.Text = "Ingrese el url para la imagen de esta tarjeta";
                return false;
            }
            if (txt_Descripcion_Catalogo.Text == "")
            {
                lbl_Descripcion_Catalogo.BackColor = System.Drawing.Color.Red;
                lbl_Descripcion_Catalogo.ForeColor = System.Drawing.Color.White;
                lbl_Descripcion_Catalogo.Text = "Ingrese la descripcion de esta tarjeta";
                return false;
            }
            if (txt_Precio_Catalogo.Text == "")
            {
                lbl_Precio_Catalogo.BackColor = System.Drawing.Color.Red;
                lbl_Precio_Catalogo.ForeColor = System.Drawing.Color.White;
                lbl_Precio_Catalogo.Text = "Ingrese el precio de este item del catalogo";
                return false;
            }
            return true;
        }
        protected void btn_Rellenar3_Click(object sender, EventArgs e)
        {
            lbl_Logo.Text = "";
            lbl_NombreCategoria1.Text = "";
            lbl_UrlVideo1.Text = "";
            lbl_UrlVideo2.Text = "";
            lbl_UrlVideo3.Text = "";
            lbl_NombreCategoria2.Text = "";
            lbl_UrlVideo4.Text = "";
            lbl_UrlVideo5.Text = "";
            lbl_UrlVideo6.Text = "";
            lbl_Direccion.Text = "";
            lbl_Telefono.Text = "";
            lbl_Email.Text = "";

            ValidarID3 = ValidarInputsID3();

            if (ValidarID3)
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
        }

        private bool ValidarInputsID3()
        {
            if (txt_Logo.Text == "")
            {
                lbl_Logo.BackColor = System.Drawing.Color.Red;
                lbl_Logo.ForeColor = System.Drawing.Color.White;
                lbl_Logo.Text = "Ingrese el url del logo";
                return false;
            }
            if (txt_NombreCategoria1.Text == "")
            {
                lbl_NombreCategoria1.BackColor = System.Drawing.Color.Red;
                lbl_NombreCategoria1.ForeColor = System.Drawing.Color.White;
                lbl_NombreCategoria1.Text = "Ingrese el nombre de la categoria";
                return false;
            }
            if (txt_UrlVideo1.Text == "")
            {
                lbl_UrlVideo1.BackColor = System.Drawing.Color.Red;
                lbl_UrlVideo1.ForeColor = System.Drawing.Color.White;
                lbl_UrlVideo1.Text = "Ingrese la Url del video";
                return false;
            }
            if (txt_UrlVideo2.Text == "")
            {
                lbl_UrlVideo2.BackColor = System.Drawing.Color.Red;
                lbl_UrlVideo2.ForeColor = System.Drawing.Color.White;
                lbl_UrlVideo2.Text = "Ingrese la Url del video";
                return false;
            }
            if (txt_UrlVideo3.Text == "")
            {
                lbl_UrlVideo3.BackColor = System.Drawing.Color.Red;
                lbl_UrlVideo3.ForeColor = System.Drawing.Color.White;
                lbl_UrlVideo3.Text = "Ingrese la Url del video";
                return false;
            }
            if (txt_NombreCategoria2.Text == "")
            {
                lbl_NombreCategoria2.BackColor = System.Drawing.Color.Red;
                lbl_NombreCategoria2.ForeColor = System.Drawing.Color.White;
                lbl_NombreCategoria2.Text = "Ingrese el nombre de la categoria";
                return false;
            }
            if (txt_UrlVideo4.Text == "")
            {
                lbl_UrlVideo4.BackColor = System.Drawing.Color.Red;
                lbl_UrlVideo4.ForeColor = System.Drawing.Color.White;
                lbl_UrlVideo4.Text = "Ingrese la Url del video";
                return false;
            }
            if (txt_UrlVideo5.Text == "")
            {
                lbl_UrlVideo5.BackColor = System.Drawing.Color.Red;
                lbl_UrlVideo5.ForeColor = System.Drawing.Color.White;
                lbl_UrlVideo5.Text = "Ingrese la Url del video";
                return false;
            }
            if (txt_UrlVideo6.Text == "")
            {
                lbl_UrlVideo6.BackColor = System.Drawing.Color.Red;
                lbl_UrlVideo6.ForeColor = System.Drawing.Color.White;
                lbl_UrlVideo6.Text = "Ingrese la Url del video";
                return false;
            }
            if (txt_Direccion.Text == "")
            {
                lbl_Direccion.BackColor = System.Drawing.Color.Red;
                lbl_Direccion.ForeColor = System.Drawing.Color.White;
                lbl_Direccion.Text = "Ingrese la direccion para contacto";
                return false;
            }
            if (txt_Telefono.Text == "")
            {
                lbl_Telefono.BackColor = System.Drawing.Color.Red;
                lbl_Telefono.ForeColor = System.Drawing.Color.White;
                lbl_Telefono.Text = "Ingrese el telefono para contacto";
                return false;
            }
            if (txt_Email.Text == "")
            {
                lbl_Email.BackColor = System.Drawing.Color.Red;
                lbl_Email.ForeColor = System.Drawing.Color.White;
                lbl_Email.Text = "Ingrese el Email para contacto";
                return false;
            }
            return true;
        }
    }
}