using System;

namespace Modelo
{
    public class PedidoWebPage
    {
        public Int16 Id { get; set; }

        public string Comentarios { get; set; }

        public Int16 Id_Cliente { get; set; }//El cliente que lo pidio

        public int Precio { get; set; }//el precio a la fecha que se hizo el pedido

        public Int16 Id_WebPage { get; set; }

        public string FechaPedido { get; set; } //en sql es date si da problemas lo saco
        public bool Estado { get; set; }
    }
}
