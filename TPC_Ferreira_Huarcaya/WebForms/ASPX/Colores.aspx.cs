using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;
using Negocio;

namespace WebForms.ASPX
{
    public partial class Colores : System.Web.UI.Page
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
            /*Hay formas de simplificar todo esto pero ahora estoy probando*/

            //Colores
            ddl_Colores.DataSource = consultarColores("Select * From Colores");
            ddl_Colores.DataTextField = "Descripcion";
            ddl_Colores.DataValueField = "ID";
            ddl_Colores.DataBind();
            ddl_Colores.Items.Insert(0, new ListItem("[Seleccionar]","0"));
            //Elementos
            ddl_Elementos.DataSource = consultarColores("Select * From Elementos");
            ddl_Elementos.DataTextField = "Descripcion";
            ddl_Elementos.DataValueField = "ID";
            ddl_Elementos.DataBind();
            ddl_Elementos.Items.Insert(0, new ListItem("[Seleccionar]", "0"));

        }
        public DataSet consultarColores (string strSql)
        {
            string conexion = "data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi";
            SqlConnection con = new SqlConnection(conexion);
            con.Open();
            SqlCommand cmd = new SqlCommand(strSql,con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        public DataSet consultarElementos(string strSql)
        {
            string conexion = "data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi";
            SqlConnection con = new SqlConnection(conexion);
            con.Open();
            SqlCommand cmd = new SqlCommand(strSql, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
    }

}