using Negocio;
using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.ASPX
{
    public partial class CarritoCompra : System.Web.UI.Page
    {
        private Int16 idPagina;
        private PaginasWebNegocios pagNeg = null;
        private List<PaginaWeb> listaPagina = null;
        private PaginaWeb paginaWeb = null;
        public List<PaginaWeb> listaCarrito = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(listaCarrito == null)
            {
                listaCarrito = new List<PaginaWeb>();
            }
            if(Session["listaCompras"] == null)
            {
                Session.Add("listaCompras",listaCarrito);
            }
            if(Request.QueryString["idPagina"] != null)
            {
                AgregarPagina();
            }
            if(Request.QueryString["listaEliminar"] != null)
            {
                EliminarPagina();
            }

            listaCarrito = (List<PaginaWeb>)Session["listaCompras"]; //actualizar la lista desde la session

        }
        public void AgregarPagina()
        {
            pagNeg = new PaginasWebNegocios();
            idPagina = Convert.ToInt16(Request.QueryString["idPagina"]); //se supone que el id ya viene en formato int16  resp: parece que no tuve que convertirlo
            listaPagina = pagNeg.listaPaginassWeb();

            paginaWeb = BuscarPagina(listaPagina, idPagina);

            listaCarrito = ((List<PaginaWeb>)Session["listaCompras"]);

            listaCarrito.Add(paginaWeb);

            Session["listaCompras"] = listaCarrito;

        }
        public void EliminarPagina()
        {
            idPagina = Convert.ToInt16(Request.QueryString["listaEliminar"]);

            listaCarrito = ((List<PaginaWeb>)Session["listaCompras"]);

            listaCarrito.Remove(listaCarrito.Find(x => x.ID == idPagina)); //lambda

            Session["listaCompras"] = listaCarrito;
        }
        private PaginaWeb BuscarPagina(List<PaginaWeb> lista, Int16 idPagina)
        {
            foreach(PaginaWeb item in lista)
            {
                if(item.ID == idPagina)
                {
                    paginaWeb = item;
                    return paginaWeb;
                }
            }
            return paginaWeb;
        }
    }
}