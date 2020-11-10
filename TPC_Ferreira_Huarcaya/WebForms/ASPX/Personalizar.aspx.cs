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
                IniciarLlenadoDeDropDowns();
            }
        }
        private void IniciarLlenadoDeDropDowns()
        {
            DropdownsNegocio coloresNegocio = new DropdownsNegocio();
            
            //Colores
            ddl_Colores.DataSource = coloresNegocio.ConsultaDataSet("Select * From Colores");
            ddl_Colores.DataTextField = "Descripcion";
            ddl_Colores.DataValueField = "ID";
            ddl_Colores.DataBind();
            ddl_Colores.Items.Insert(0, new ListItem("[Colores]", "0"));

            //Elementos
            ddl_Elementos.DataSource = coloresNegocio.ConsultaDataSet("Select * From Elementos");
            ddl_Elementos.DataTextField = "Descripcion";
            ddl_Elementos.DataValueField = "ID";
            ddl_Elementos.DataBind();
            ddl_Elementos.Items.Insert(0, new ListItem("[Elementos]", "0"));

            //Disposicion Elementos
            ddl_DispElementos.DataSource = coloresNegocio.ConsultaDataSet("Select * From Disposicion_Elementos");
            ddl_DispElementos.DataTextField = "Descripcion";
            ddl_DispElementos.DataValueField = "ID";
            ddl_DispElementos.DataBind();
            ddl_DispElementos.Items.Insert(0, new ListItem("[Disposicion Elementos]", "0"));

            //Categorias
            ddl_Categorias.DataSource = coloresNegocio.ConsultaDataSet("Select * From Categorias");
            ddl_Categorias.DataTextField = "Descripcion";
            ddl_Categorias.DataValueField = "ID";
            ddl_Categorias.DataBind();
            ddl_Categorias.Items.Insert(0, new ListItem("[Categorias]", "0"));

            //Estilos
            ddl_Estilos.DataSource = coloresNegocio.ConsultaDataSet("Select * From Estilos");
            ddl_Estilos.DataTextField = "Descripcion";
            ddl_Estilos.DataValueField = "ID";
            ddl_Estilos.DataBind();
            ddl_Estilos.Items.Insert(0, new ListItem("[Estilos]", "0"));

            //Funcionalidades
            ddl_Funcionalidades.DataSource = coloresNegocio.ConsultaDataSet("Select * From Funcionalidades");
            ddl_Funcionalidades.DataTextField = "Descripcion";
            ddl_Funcionalidades.DataValueField = "ID";
            ddl_Funcionalidades.DataBind();
            ddl_Funcionalidades.Items.Insert(0, new ListItem("[Funcionalidades]", "0"));

            //Paginas
            ddl_Paginas.DataSource = coloresNegocio.ConsultaDataSet("Select * From Paginas");
            ddl_Paginas.DataTextField = "Descripcion";
            ddl_Paginas.DataValueField = "ID";
            ddl_Paginas.DataBind();
            ddl_Paginas.Items.Insert(0, new ListItem("[Paginas]", "0"));

            ///Secciones
            ddl_Secciones.DataSource = coloresNegocio.ConsultaDataSet("Select * From Secciones");
            ddl_Secciones.DataTextField = "Descripcion";
            ddl_Secciones.DataValueField = "ID";
            ddl_Secciones.DataBind();
            ddl_Secciones.Items.Insert(0, new ListItem("[Secciones]", "0"));




            /*
             Hay que agregarle a la base de datos un insert con el valor de "sin elementos" por ejemplo en caso de que un cliente no quiera elementos en su pagina
            */

        }
    }
}