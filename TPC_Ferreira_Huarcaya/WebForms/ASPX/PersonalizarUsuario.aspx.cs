using Modelo;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.ASPX
{
    public partial class PersonalizarPaginas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IniciarLlenadoDeDropDownPaginas();
            }
        }
        private void IniciarLlenadoDeDropDownPaginas()
        {
            DropdownsNegocio estNeg = new DropdownsNegocio();

            //Paginas

            List<Pagina> listPagina = estNeg.listarPaginas();
            List<Funcionalidad> listFunc = estNeg.listarFuncionalidades();
            List<Estilo> listEstilo = estNeg.listarEstilos();

            ddl_Paginas.DataSource = listPagina;
            ddl_Paginas.DataTextField = "Descripcion";
            ddl_Paginas.DataValueField = "ID";
            ddl_Paginas.DataBind();
            ddl_Paginas.Items.Insert(0, new ListItem("[Pagina]", "0"));
            //Paginas tambien podria tener una url_Imagen */

            //Estilos
            ddl_Estilos.DataSource = listEstilo;
            ddl_Estilos.DataTextField = "Descripcion";
            ddl_Estilos.DataValueField = "ID";
            ddl_Estilos.DataBind();
            ddl_Estilos.Items.Insert(0, new ListItem("[Estilos]", "0"));

            //Funcionalidades
            ddl_Funcionalidades.DataSource = listPagina;
            ddl_Funcionalidades.DataTextField = "Descripcion";
            ddl_Funcionalidades.DataValueField = "ID";
            ddl_Funcionalidades.DataBind();
            ddl_Funcionalidades.Items.Insert(0, new ListItem("[Funcionalidades]", "0"));

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersonalizarEstilos.aspx");
        }
    }
}