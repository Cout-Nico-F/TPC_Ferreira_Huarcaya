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

        public Int32 Costo { get; set; }

        public List<Elemento> Elementos { get; set; }

        public List<Funcionalidad> Funcionalidades { get; set; }

    }
}
