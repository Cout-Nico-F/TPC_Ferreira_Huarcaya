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
        protected void Page_Load(object sender, EventArgs e)
        {
            idRecibido = Convert.ToInt32(Request.QueryString["idFuncionalidad"]);
            FuncionalidadNegocio funNegocio = new FuncionalidadNegocio();
            var listaFuncionalidades = funNegocio.Listar();
            Funcionalidad = listaFuncionalidades.Find( f => idRecibido == f.Id);
        }
    }
}