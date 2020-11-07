using Negocio;
using System.Data;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebForms.ASPX
{
    public partial class Personalizar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IniciarLlenado();
            }
        }
        private void IniciarLlenado()
        {
            ColoresNegocio coloresNegocio = new ColoresNegocio();
            ElementosNegocio elementosNegocio = new ElementosNegocio();
            
            //Colores
            ddl_Colores.DataSource = coloresNegocio.ListarColores("Select * From Colores");
            ddl_Colores.DataTextField = "Descripcion";
            ddl_Colores.DataValueField = "ID";
            ddl_Colores.DataBind();
            ddl_Colores.Items.Insert(0, new ListItem("[Seleccionar]", "0"));
            //Elementos
            ddl_Elementos.DataSource = elementosNegocio.ListarElementos("Select * From Elementos");
            ddl_Elementos.DataTextField = "Descripcion";
            ddl_Elementos.DataValueField = "ID";
            ddl_Elementos.DataBind();
            ddl_Elementos.Items.Insert(0, new ListItem("[Seleccionar]", "0"));

        }
    }
}