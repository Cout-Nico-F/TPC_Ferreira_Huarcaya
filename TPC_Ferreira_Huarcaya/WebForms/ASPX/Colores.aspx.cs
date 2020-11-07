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
            ddl_Colores.DataSource = consultar("Select * From Colores");
            ddl_Colores.DataTextField = "Descripcion";
            ddl_Colores.DataValueField = "ID";
            ddl_Colores.DataBind();
            ddl_Colores.Items.Insert(0, new ListItem("[Sekeccionar]","0"));
        }
        public DataSet consultar (string strSql)
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
    }

}