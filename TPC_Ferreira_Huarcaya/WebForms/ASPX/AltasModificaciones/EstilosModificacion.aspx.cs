using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Negocio;

namespace WebForms.ASPX.AltasModificaciones
{
    public partial class EstilosModificacion : System.Web.UI.Page
    {
        protected int idRecibido;
        public Estilo EstiloSeleccionado { get; set; }
        public EstiloNegocio EstiloNegocio { get; set; }
        public EstilosModificacion()
        {
            EstiloNegocio = new EstiloNegocio();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idEstilo"] == null)
            {
                Response.Redirect("Error.aspx");
            }
            idRecibido = Convert.ToInt16(Request.QueryString["idEstilo"]);

            var listaEstilos = EstiloNegocio.Listar();

            EstiloSeleccionado = listaEstilos.Find(es => idRecibido == es.Id);

            if (!IsPostBack)
            {
                txtBox_Descripcion.Text = EstiloSeleccionado.Descripcion;
                txtBox_Url_Imagen.Text = EstiloSeleccionado.Url_Imagen;
            }
        }

        protected void btn_Cambios_Click(object sender, EventArgs e)
        {
            Estilo estiloModificado = new Estilo();

            estiloModificado.Id = EstiloSeleccionado.Id;
            estiloModificado.Descripcion = txtBox_Descripcion.Text;
            estiloModificado.Url_Imagen = txtBox_Url_Imagen.Text;
            estiloModificado.Habilitado = true; 

            int rowsAfectados = EstiloNegocio.Modificar(estiloModificado);

            if (rowsAfectados == 1)
            {
                Response.Redirect("../PersonalizarUsuario.aspx");
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
}