using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    class Elemento
    {
        public Int16 Id { get; set; }

        public string Descripcion { get; set; }

        public Int32 Costo { get; set; }

        public Disposicion Disposicion { get; set; } //El elemento tiene una disposicion en la pagina.

    }
}
