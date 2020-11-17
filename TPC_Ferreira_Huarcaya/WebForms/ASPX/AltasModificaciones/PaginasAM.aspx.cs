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
        public int IdRecibido { get; set; }
        public Pagina Pagina  { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idPagina"] != null)
            {
                IdRecibido = Convert.ToInt32(Request.QueryString["idPagina"]);
            }
            else
            {
                Pagina = new Pagina();
                IdRecibido = -1;
            }
        }
        protected void Btn_PaginaAM_OK_Click(object sender, EventArgs e)
        {
<<<<<<< Updated upstream
            Pagina.Descripcion = txtBox_Descripcion.Text;
            Pagina.Habilitado = true;

=======
>>>>>>> Stashed changes
            PaginaNegocio PagNeg = new PaginaNegocio();

            if (IdRecibido > 0 )
            {
                List<Pagina> listadoPaginasCompleto = PagNeg.Listar();
                Pagina = listadoPaginasCompleto.Find(p => p.ID == Convert.ToInt16(IdRecibido));
                txtBox_Descripcion.Text = Pagina.Descripcion;
            }

            Pagina.Descripcion = txtBox_Descripcion.Text;

            if (PagNeg.Agregar(Pagina) < 1)
            {
                Response.Redirect("../Error.aspx");
            }
            else Response.Redirect("../PersonalizarUsuario.aspx");
        }
    }
}