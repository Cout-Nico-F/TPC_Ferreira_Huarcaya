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
    public partial class PersonalizarFuncionalidades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IniciarLlenadoDeDropDownFuncionalidades();
            }
        }
        private void IniciarLlenadoDeDropDownFuncionalidades()
        {
            DropdownsNegocio estNeg = new DropdownsNegocio();

            //Estilos
            ddl_Funcionalidades.DataSource = estNeg.ConsultaDataSet("Select * From Funcionalidades");
            ddl_Funcionalidades.DataTextField = "Descripcion";
            ddl_Funcionalidades.DataValueField = "ID";
            ddl_Funcionalidades.DataBind();
            ddl_Funcionalidades.Items.Insert(0, new ListItem("[Funcionalidades]", "0"));
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

            string func = ddl_Funcionalidades.SelectedValue;



            Session["listaObjetos"] = func;
        }
    }
}