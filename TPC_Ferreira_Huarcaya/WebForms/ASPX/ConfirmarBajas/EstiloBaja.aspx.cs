using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Modelo;

namespace WebForms.ASPX.ConfirmarBajas
{
    public partial class EstiloBaja : System.Web.UI.Page
    {
        protected int idRecibido;

        public Estilo EstiloSeleccionado { get; set; }

        public int prueba { get; set; }

        public EstiloNegocio EstNegocio { get; set; }

        public EstiloBaja()
        {
            EstNegocio = new EstiloNegocio();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idEstilo"] == null)
            {
                Response.Redirect("../Home.aspx");//solo se puede entrar a esta pagina llegando con una id de estilo por url.
            }
            idRecibido = Convert.ToInt32(Request.QueryString["idEstilo"]);

            var listaEstilos = EstNegocio.Listar();
            EstiloSeleccionado = listaEstilos.Find(es => idRecibido == es.Id);
        }

        protected void Btn_Baja_Estilo_Click(object sender, EventArgs e)
        {
            EstNegocio.Eliminar(EstiloSeleccionado.Id);
            Response.Redirect("../Personalizar.aspx");
        }
    }
}