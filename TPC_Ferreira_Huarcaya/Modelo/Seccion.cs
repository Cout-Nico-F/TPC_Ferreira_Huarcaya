using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    class Seccion
    {
        public Int16 Id { get; set; }

        public string Descripcion { get; set; }

        public Estilo Estilo { get; set; }

        public List<Pagina> Paginas { get; set; }
    }
}
