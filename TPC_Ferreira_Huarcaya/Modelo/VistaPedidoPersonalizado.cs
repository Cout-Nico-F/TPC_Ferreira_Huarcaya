﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class VistaPedidoPersonalizado
    {
        public string Fecha { get; set; }

        public Int16 IdPedido { get; set; }

        public Int16 IdUsuario { get; set; }

        public string Estilo { get; set; }

        public int CantPaginas { get; set; }

        public int CantFuncs { get; set; }
    }
}
