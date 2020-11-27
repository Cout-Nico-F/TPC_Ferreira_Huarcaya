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
            //Response.Redirect("/Templates Prefabricados/Template_A_Home.aspx");
            Response.Write("<script>window.open ('/Templates Prefabricados/Template_A_Home.aspx','_blank');</script>");
        }
    }
}