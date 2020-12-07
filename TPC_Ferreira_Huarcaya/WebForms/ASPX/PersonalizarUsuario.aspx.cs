using Modelo;
using Negocio;
using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace WebForms.ASPX
{
    public partial class PersonalizarPaginas : System.Web.UI.Page
    {
        public Funcionalidad Funcionalidad { get; set; }
        public Estilo EstiloSeleccionado { get; set; }
        public List<Funcionalidad> ListaFuncionalidadesAgregadas { get; set; }
        public List<Pagina> ListaPaginasAgregadas { get; set; }
        public Pagina PaginaSeleccionada { get; set; }
        public Usuario Usuario { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                IniciarLlenadoDeDropDowns();
            }

            Inicializar_listas();

            Actualizar_listas();

            //Escucha al boton remover
            if (Request.QueryString["IdRemoverFuncionalidad"] != null)
            {
                RemoverFuncionalidad();
            }
            if (Request.QueryString["IdRemoverPagina"] != null)
            {
                RemoverPagina();
            }

        }
        private void IniciarLlenadoDeDropDowns()
        {
            DropdownsNegocio estNeg = new DropdownsNegocio();

            //Paginas
            ddl_Paginas.DataSource = estNeg.ConsultaDataSet("Select * From Paginas where Habilitado = 1");
            ddl_Paginas.DataTextField = "Descripcion";
            ddl_Paginas.DataValueField = "ID";
            ddl_Paginas.DataBind();
            ddl_Paginas.Items.Insert(0, new ListItem("[Pagina]", "0"));

            //Estilos
            ddl_Estilos.DataSource = estNeg.ConsultaDataSet("Select * From Estilos where Habilitado = 1");
            ddl_Estilos.DataTextField = "Descripcion";
            ddl_Estilos.DataValueField = "ID";
            ddl_Estilos.DataBind();
            ddl_Estilos.Items.Insert(0, new ListItem("[Estilos]", "0"));

            //Funcionalidades
            ddl_Funcionalidades.DataSource = estNeg.ConsultaDataSet("Select * From Funcionalidades where Habilitado = 1"); ;
            ddl_Funcionalidades.DataTextField = "Descripcion";
            ddl_Funcionalidades.DataValueField = "ID";
            ddl_Funcionalidades.DataBind();
            ddl_Funcionalidades.Items.Insert(0, new ListItem("[Funcionalidades]", "0"));

        }

        protected void btn_Agregar_Funcionalidad_Click(object sender, EventArgs e)
        {
            if (ddl_Funcionalidades.SelectedIndex != 0)
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
            if (ddl_Paginas.SelectedIndex != 0)
            {
                ListaPaginasAgregadas = (List<Pagina>)Session["listaPaginasSelec"];
                PaginaNegocio pagNeg = new PaginaNegocio();

                var listaCompletaPaginas = pagNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Paginas.SelectedItem.Value);

                ListaPaginasAgregadas.Add(listaCompletaPaginas.Find(x => id == x.ID));

                Session["listaPaginasSelec"] = ListaPaginasAgregadas;
            }

        }

        protected void ddl_Estilos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt16(ddl_Estilos.SelectedItem.Value) != 0)
            {
                EstiloSeleccionado = (Estilo)Session["estiloSelec"];
                EstiloNegocio estNeg = new EstiloNegocio();

                var listaEstilo = estNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Estilos.SelectedItem.Value);
                EstiloSeleccionado = listaEstilo.Find(x => id == x.Id);
                Session["estiloSelec"] = EstiloSeleccionado;
            }
        }

        protected void bnt_Funcionalidad_Baja_Click(object sender, EventArgs e)
        {
            if (ddl_Funcionalidades.SelectedIndex != 0)
            {
                string id = ddl_Funcionalidades.SelectedItem.Value;
                Response.Redirect("/ASPX/ConfirmarBajas/FuncionalidadBaja.aspx?idFuncionalidad=" + id);
            }
        }

        protected void btn_Estilo_Baja_Click(object sender, EventArgs e)
        {
            if (ddl_Estilos.SelectedIndex != 0)
            {
                string id = ddl_Estilos.SelectedItem.Value;
                Response.Redirect("/ASPX/ConfirmarBajas/EstiloBaja.aspx?idEstilo=" + id);
            }
        }

        protected void ddl_Paginas_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt16(ddl_Paginas.SelectedItem.Value) != 0)
            {
                PaginaNegocio pagNeg = new PaginaNegocio();

                var listaPaginas = pagNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Paginas.SelectedItem.Value);

                PaginaSeleccionada = listaPaginas.Find(x => id == x.ID);
            }
        }

        protected void btn_Pagina_Baja_Click(object sender, EventArgs e)
        {
            if (ddl_Paginas.SelectedIndex != 0)
            {
                string id = ddl_Paginas.SelectedItem.Value;
                Response.Redirect("/ASPX/ConfirmarBajas/PaginaBaja.aspx?idPagina=" + id);
            }
        }

        protected void btn_Pagina_Modificacion_Click(object sender, EventArgs e)
        {
            if (ddl_Paginas.SelectedIndex != 0)
            {
                Response.Redirect("AltasModificaciones/PaginasAM.aspx?idPagina=" + ddl_Paginas.SelectedItem.Value);
            }
        }

        protected void btn_Funcionalidad_Modificacion_Click(object sender, EventArgs e)
        {
            if (ddl_Funcionalidades.SelectedIndex != 0)
            {
                Response.Redirect("AltasModificaciones/FuncionalidadesAM.aspx?idFuncionalidad=" + ddl_Funcionalidades.SelectedItem.Value);
            }
        }

        protected void btn_Estilo_Modificacion_Click(object sender, EventArgs e)
        {
            if (ddl_Estilos.SelectedIndex != 0)
            {
                Response.Redirect("AltasModificaciones/EstilosAM.aspx?idEstilo=" + ddl_Estilos.SelectedItem.Value);
            }

        }

        void RemoverFuncionalidad()
        {
            Int16 id = Convert.ToInt16(Request.QueryString["IdRemoverFuncionalidad"]);
            FuncionalidadNegocio funNeg = new FuncionalidadNegocio();
            var listaFuncionalidadesCompleta = funNeg.Listar();
            var func = listaFuncionalidadesCompleta.Find(x => x.Id == id);

            ListaFuncionalidadesAgregadas = (List<Funcionalidad>)Session["listaFuncionalidadesSelec"];
            int indiceBuscado = ListaFuncionalidadesAgregadas.FindIndex(f => f.Id == func.Id);
            ListaFuncionalidadesAgregadas.RemoveAt(indiceBuscado);

            Session["listaFuncionalidadesSelec"] = ListaFuncionalidadesAgregadas;
            Response.Redirect("PersonalizarUsuario.aspx");
        }

        void RemoverPagina()
        {
            Int16 id = Convert.ToInt16(Request.QueryString["IdRemoverPagina"]);
            PaginaNegocio pagNeg = new PaginaNegocio();
            var listaPaginasCompleta = pagNeg.Listar();
            var pag = listaPaginasCompleta.Find(p => p.ID == id);

            ListaPaginasAgregadas = (List<Pagina>)Session["listaPaginasSelec"];
            int indiceBuscado = ListaPaginasAgregadas.FindIndex(item => item.ID == pag.ID);
            ListaPaginasAgregadas.RemoveAt(indiceBuscado);

            Session["listaPaginasSelec"] = ListaPaginasAgregadas;
            Response.Redirect("PersonalizarUsuario.aspx");
        }

        void Inicializar_listas()
        {
            //inicializacion de listas si fueran null
            if (ListaFuncionalidadesAgregadas == null)
            {
                ListaFuncionalidadesAgregadas = new List<Funcionalidad>();
            }
            if (ListaPaginasAgregadas == null)
            {
                ListaPaginasAgregadas = new List<Pagina>();
            }
            if (EstiloSeleccionado == null)
            {
                EstiloSeleccionado = new Estilo();
            }
        }

        void Actualizar_listas()
        {
            //actualizacion de las listas de agregados de la session
            //funcionalidades
            if (Session["listaFuncionalidadesSelec"] != null)
            {
                ListaFuncionalidadesAgregadas = (List<Funcionalidad>)Session["listaFuncionalidadesSelec"];
            }
            else
            {
                Session.Add("listaFuncionalidadesSelec", ListaFuncionalidadesAgregadas);
            }
            //Paginas

            if (Session["listaPaginasSelec"] == null)
            {
                Session.Add("listaPaginasSelec", ListaPaginasAgregadas);
            }
            else
            {
                ListaPaginasAgregadas = (List<Pagina>)Session["listaPaginasSelec"];
            }

            //Estilo
            if (Session["estiloSelec"] == null)
            {
                Session.Add("estiloSelec", EstiloSeleccionado);
            }
            else
            {
                EstiloSeleccionado = (Estilo)Session["estiloSelec"];
            }
        }

        protected void btn_Solicitar_Click(object sender, EventArgs e)//TODO: dar estilo al boton solicitar.
        {
            PedidoPaginaPersonalizada pedidoPersonalizado = new PedidoPaginaPersonalizada();
            pedidoPersonalizado.Funcionalidades = (List<Funcionalidad>)Session["listaFuncionalidadesSelec"];
            pedidoPersonalizado.Paginas = (List<Pagina>)Session["listaPaginasSelec"];
            pedidoPersonalizado.ID_Estilo = EstiloSeleccionado.Id;
            pedidoPersonalizado.Precio = CalcularPrecio();
            Session.Add("pedidoPersonalizado", pedidoPersonalizado);
            Response.Redirect("ConfirmarPedidoPersonalizado.aspx");
        }

        int CalcularPrecio()
        {
            PedidoPersonalizadoNegocio pneg = new PedidoPersonalizadoNegocio();

            int precio = pneg.GetPrecioBase();

            foreach (var item in (List<Funcionalidad>)Session["listaFuncionalidadesSelec"])
            {
                precio += item.Costo;
            }
            foreach (var item in (List<Pagina>)Session["listaPaginasSelec"])
            {
                precio += pneg.GetPrecioPorPagina();
            }

            return precio;
        }
    }
}