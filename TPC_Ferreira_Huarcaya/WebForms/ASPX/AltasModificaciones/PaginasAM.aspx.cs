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
        public int IdRecibido { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idPagina"] != null)//si llega un parametro estamos modificando
            {
                IdRecibido = Convert.ToInt32(Request.QueryString["idPagina"]);
                if (IdRecibido > 0)//(0 es el id del placeholder que se llama [Paginas])
                {
                    if (! IsPostBack)
                    {
                        PaginaNegocio PagNeg = new PaginaNegocio();
                        //modificando
                        List<Pagina> listadoPaginasCompleto = PagNeg.Listar();
                        Pagina = listadoPaginasCompleto.Find(p => p.ID == Convert.ToInt16(IdRecibido));
                        //precargo el campo con los datos
                        txtBox_Descripcion.Text = Pagina.Descripcion;
                    }
                }
            }
            else//sino estamos creando
            {
                if (!IsPostBack)
                {
                    Pagina = new Pagina();
                    IdRecibido = -1;//id -1 lo voy a usar de bandera 
                }
            }
        }

        protected void Btn_PaginaAM_OK_Click(object sender, EventArgs e)
        {
            Pagina.Descripcion = txtBox_Descripcion.Text;
            Pagina.Habilitado = true;

            PaginaNegocio PagNeg = new PaginaNegocio();

            if (PagNeg.Agregar(Pagina) < 1)
            {
                Response.Redirect("../Error.aspx");
            }
            else Response.Redirect("../PersonalizarUsuario.aspx");
        }
    }
}