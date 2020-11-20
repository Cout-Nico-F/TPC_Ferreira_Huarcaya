﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    class PedidoPaginaPersonalizada
    {
        public Int16 Id { get; set; }

        public string Comentarios { get; set; }

        public Cliente Cliente { get; set; }//El pedido tiene un cliente ( que lo pidió )

        public int Precio { get; set; } // Precio final que se setea en base a los costos de funcionalidades y cantidad de paginas.

        public Estilo Estilo { get; set; }

        public List<Funcionalidad> Funcionalidades { get; set; }

        public List<Pagina> Paginas { get; set; }
    }
}