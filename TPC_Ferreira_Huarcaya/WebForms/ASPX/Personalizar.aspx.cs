using Negocio;
using Modelo;
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
                IniciarLlenadoDeDropDowns();
            }
        }
        private void IniciarLlenadoDeDropDowns()
        {
            DropdownsNegocio dropdownsNegocio = new DropdownsNegocio();

            //Estilos
            ddl_Estilos.DataSource = dropdownsNegocio.ConsultaDataSet("Select * From Estilos");
            ddl_Estilos.DataTextField = "Descripcion";
            ddl_Estilos.DataValueField = "ID";
            ddl_Estilos.DataBind();
            ddl_Estilos.Items.Insert(0, new ListItem("[Estilo]", "0"));

            //Funcionalidades
            ddl_Funcionalidades.DataSource = dropdownsNegocio.ConsultaDataSet("Select * From Funcionalidades");
            ddl_Funcionalidades.DataTextField = "Descripcion";
            ddl_Funcionalidades.DataValueField = "ID";
            ddl_Funcionalidades.DataBind();
            ddl_Funcionalidades.Items.Insert(0, new ListItem("[Funcionalidades]", "0"));

            //Paginas
            ddl_Paginas.DataSource = dropdownsNegocio.ConsultaDataSet("Select * From Paginas");
            ddl_Paginas.DataTextField = "Descripcion";
            ddl_Paginas.DataValueField = "ID";
            ddl_Paginas.DataBind();
            ddl_Paginas.Items.Insert(0, new ListItem("[Paginas]", "0"));
        }

        protected void Baja_Funcionalidad_Click(object sender, EventArgs e)
        {
           string id = ddl_Funcionalidades.SelectedItem.Value;
           Response.Redirect("/ASPX/ConfirmarBajas/FuncionalidadBaja.aspx?idFuncionalidad=" + id);
        }

        protected void Btn_Estilo_Baja_Click(object sender, EventArgs e)
        {
            string id = ddl_Estilos.SelectedItem.Value;
            Response.Redirect("/ASPX/ConfirmarBajas/EstiloBaja.aspx?idEstilo=" + id);
        }

        protected void Btn_Pagina_Baja_Click(object sender, EventArgs e)
        {

        }
    }
}