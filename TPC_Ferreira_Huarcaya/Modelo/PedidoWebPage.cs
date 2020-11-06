using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    class PedidoWebPage
    {
        public Int16 Id { get; set; }

        public string Comentarios { get; set; }

        public Cliente Cliente { get; set; }//El pedido tiene un cliente ( que lo pidió )

        public Categoria Categoria { get; set; }

        public List<Seccion> Secciones { get; set; }
    }
}
