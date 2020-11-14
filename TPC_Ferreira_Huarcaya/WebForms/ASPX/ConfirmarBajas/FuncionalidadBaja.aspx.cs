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
    public partial class FuncionalidadBaja : System.Web.UI.Page
    {
        protected int idRecibido;
        public Funcionalidad Funcionalidad { get; set; }

        public FuncionalidadNegocio FunNegocio { get; }

        public FuncionalidadBaja()
        {
            FunNegocio = new FuncionalidadNegocio();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idFuncionalidad"] == null) 
            {
                Response.Redirect("../Home.aspx");//solo se puede entrar a esta pagina llegando con una id de funcionalidad por url.
            }
            idRecibido = Convert.ToInt32(Request.QueryString["idFuncionalidad"]);
            
            var listaFuncionalidades = FunNegocio.Listar();
            Funcionalidad = listaFuncionalidades.Find( f => idRecibido == f.Id );
        }

        protected void Btn_Baja_Funcionalidad_Click(object sender, EventArgs e)
        {
            FunNegocio.Eliminar(Funcionalidad.Id);//el metodo permite usar un if para comprobar que se pudo eliminar (1) o que no afecto ninguna row (0)
            Response.Redirect("../Personalizar.aspx");
        }
    }
}