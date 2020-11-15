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
    public partial class PaginasAM : System.Web.UI.Page
    {
        public Pagina Pagina { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Pagina = new Pagina();
        }

        protected void Btn_PaginaAM_OK_Click(object sender, EventArgs e)
        {
            Pagina.Descripcion = txtBox_Descripcion.Text;
            PaginaNegocio PagNeg = new PaginaNegocio();

            if (PagNeg.Agregar(Pagina) < 1)
            {
                Response.Redirect("../Error.aspx");
            }
            else Response.Redirect("../PersonalizarUsuario.aspx");
        }
    }
}