using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class PedidoWebPage
    {
        public Int16 Id { get; set; }

        public string Comentarios { get; set; }

        public Cliente Cliente { get; set; }//El cliente que lo pidio

        public int Precio { get; set; }//el precio a la fecha que se hizo el pedido

        public PaginaWeb WebPage { get; set; }

    }
}
