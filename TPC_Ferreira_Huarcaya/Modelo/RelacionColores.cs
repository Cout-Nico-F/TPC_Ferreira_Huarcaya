﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    class RelacionColores
    {
        public Int16 Id { get; set; }

        public string Descripcion { get; set; }

        public Int32 Costo { get; set; }

        public List<Color> Colores { get; set; } // Composicion: una RelacionColor tiene Colores.

    }
}
