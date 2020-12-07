using System;
using System.Collections.Generic;

namespace Modelo
{
    public class PedidoPaginaPersonalizada
    {
        public Int16 Id { get; set; }

        public string Comentarios { get; set; }

        public Int16 Id_Cliente { get; set; }//El pedido tiene un cliente ( que lo pidió )

        public int Precio { get; set; } // Precio final que se setea en base a los costos de funcionalidades y cantidad de paginas.

        public Int16 ID_Estilo { get; set; }

        public List<Funcionalidad> Funcionalidades { get; set; }

        public List<Pagina> Paginas { get; set; }

        public string Fecha { get; set; }
        public bool Estado { get; set; }
    }
}
