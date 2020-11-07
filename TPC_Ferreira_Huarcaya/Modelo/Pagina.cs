using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    class Pagina
    {
        public Int16 Id { get; set; }

        public string Descripcion { get; set; }

        public Int32 Costo { get; set; }//Se consige sumando los costos de sus elementos y funcionalidades.

        public List<Elemento> Elementos { get; set; }

        public List<Funcionalidad> Funcionalidades { get; set; }

    }
}
