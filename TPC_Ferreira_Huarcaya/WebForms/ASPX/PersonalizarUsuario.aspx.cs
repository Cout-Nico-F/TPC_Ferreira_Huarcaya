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
        public Funcionalidad Funcionalidad { get; set; }
        public Pagina Paginas { get; set; }
        public Estilo Estilo { get; set; }
        public Funcionalidad BajaFuncionalidad { get; set; }
        public List<Funcionalidad> ListaFuncionalidadesAgregadas { get; set; }
        public List<Pagina> ListaPaginasAgregadas { get; set; }
        public List<Pagina> ListaPaginasSeleccion { get; set; }
        public List<Estilo> ListaEstilos { get; set; }
        public List<Pagina> ListaPaginaSeleccionada { get; set; }
        public FuncionalidadNegocio FunNegocio { get; set; }
        public Usuario Usuario { get; set; }
        public List<Funcionalidad> EliminarFuncionalidad { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Usuario  = (Usuario)Session["usersession"];
                if(Usuario == null)
                {
                    Response.Redirect("InicioSesion.aspx");
                }

            }
            catch (Exception)
            {

                throw;
            }
            if (!IsPostBack)
            {
                IniciarLlenadoDeDropDownPaginas();
            }
            if (ListaFuncionalidadesAgregadas == null)
            {
                ListaFuncionalidadesAgregadas = new List<Funcionalidad>();
            }
            if(ListaPaginasAgregadas == null)
            {
                ListaPaginasAgregadas = new List<Pagina>();
            }
            if (Session["listaFuncionalidadesSelec"] == null)
            {
                Session.Add("listaFuncionalidadesSelec", ListaFuncionalidadesAgregadas);
            }
            if(Session["listaPaginasSelec"] == null)
            {
                Session.Add("listaPaginasSelec", ListaPaginasAgregadas);
            }


        }
        private void IniciarLlenadoDeDropDownPaginas()
        {
            DropdownsNegocio estNeg = new DropdownsNegocio();

            //Paginas


            ddl_Paginas.DataSource = estNeg.ConsultaDataSet("Select * From Paginas");
            ddl_Paginas.DataTextField = "Descripcion";
            ddl_Paginas.DataValueField = "ID";
            ddl_Paginas.DataBind();
            ddl_Paginas.Items.Insert(0, new ListItem("[Pagina]", "0"));
            //Paginas tambien podria tener una url_Imagen */

            //Estilos
            ddl_Estilos.DataSource = estNeg.ConsultaDataSet("Select * From Estilos");
            ddl_Estilos.DataTextField = "Descripcion";
            ddl_Estilos.DataValueField = "ID";
            ddl_Estilos.DataBind();
            ddl_Estilos.Items.Insert(0, new ListItem("[Estilos]", "0"));

            //Funcionalidades
            ddl_Funcionalidades.DataSource = estNeg.ConsultaDataSet("Select * From Funcionalidades"); ;
            ddl_Funcionalidades.DataTextField = "Descripcion";
            ddl_Funcionalidades.DataValueField = "ID";
            ddl_Funcionalidades.DataBind();
            ddl_Funcionalidades.Items.Insert(0, new ListItem("[Funcionalidades]", "0"));

        }

        protected void btn_Agregar_Click(object sender, EventArgs e)
        {
            if(ddl_Funcionalidades.SelectedIndex != 0)
            {
                FuncionalidadNegocio funNeg = new FuncionalidadNegocio();
                var listaFuncionalidades = funNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Funcionalidades.SelectedItem.Value);

                Funcionalidad = listaFuncionalidades.Find(x => id == x.Id);

                ListaFuncionalidadesAgregadas = (List<Funcionalidad>)Session["listaFuncionalidadesSelec"];

                ListaFuncionalidadesAgregadas.Add(Funcionalidad);

                Session["listaFuncionalidadesSelec"] = ListaFuncionalidadesAgregadas;
            }
           
        }

        protected void btn_AgregarPagina_Click(object sender, EventArgs e)
        {
            if(ddl_Paginas.SelectedIndex != 0)
            {
                ListaPaginasAgregadas = new List<Pagina>();
                PaginaNegocio pagNeg = new PaginaNegocio();

                var listaPagina = pagNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Paginas.SelectedItem.Value);

                Paginas = listaPagina.Find(x => id == x.ID);

                ListaPaginasAgregadas.Add(Paginas);

                Session["listaPaginasSelec"] = ListaPaginasAgregadas;
            }
          
        }

        protected void ddl_Estilos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(Convert.ToInt16(ddl_Estilos.SelectedItem.Value) != 0)
            {
                ListaEstilos = new List<Estilo>();
                EstiloNegocio estNeg = new EstiloNegocio();

                var listaEstilo = estNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Estilos.SelectedItem.Value);
                Estilo = listaEstilo.Find(x => id == x.Id);

                ListaEstilos.Add(Estilo);
            }
      
        }

        protected void bnt_Funcionalidad_Baja_Click(object sender, EventArgs e)
        {
            if(ddl_Funcionalidades.SelectedIndex != 0)
            {
                string id = ddl_Funcionalidades.SelectedItem.Value;
                Response.Redirect("/ASPX/ConfirmarBajas/FuncionalidadBaja.aspx?idFuncionalidad=" + id);
            }
          
        }

        protected void btn_Estilo_Baja_Click(object sender, EventArgs e)
        {
            if(ddl_Estilos.SelectedIndex != 0)
            {
                string id = ddl_Estilos.SelectedItem.Value;
                Response.Redirect("/ASPX/ConfirmarBajas/EstiloBaja.aspx?idEstilo=" + id);
            }
           
        }

        protected void btn_Baja_Estilo_Click(object sender, EventArgs e)
        {
            if (ddl_Estilos.SelectedIndex != 0)
            {
                FunNegocio.Eliminar(Funcionalidad.Id);//el metodo permite usar un if para comprobar que se pudo eliminar (1) o que no afecto ninguna row (0)
                Response.Redirect("../PersonalizarUsuario.aspx");
            }
           
        }

        protected void btn_Pagina_Baja_Click(object sender, EventArgs e)
        {
            string id = ddl_Paginas.SelectedItem.Value;
            Response.Redirect("/ASPX/ConfirmarBajas/PaginaBaja.aspx?idPagina=" + id);
        }

        protected void btn_Remover_Funcionalidad_Click(object sender, EventArgs e)
        {
            if(ddl_Funcionalidades.SelectedIndex != 0){

                EliminarFuncionalidad = new List<Funcionalidad>();
                FuncionalidadNegocio funNeg = new FuncionalidadNegocio();

                var Funcionalidad = funNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Funcionalidades.SelectedItem.Value);

                BajaFuncionalidad = Funcionalidad.Find(x => id == x.Id);

                EliminarFuncionalidad.Remove(BajaFuncionalidad);

            }
            
        }

        protected void ddl_Paginas_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt16(ddl_Paginas.SelectedItem.Value) != 0)
            {
                ListaPaginasSeleccion = new List<Pagina>();
                PaginaNegocio pagNeg = new PaginaNegocio();

                var listaPaginas = pagNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Paginas.SelectedItem.Value);
                // a Paginas se le asigna un null porque??
                Paginas = listaPaginas.Find(x => id == x.ID);

                ListaPaginasSeleccion.Add(Paginas);
            }           
        }
    }
}