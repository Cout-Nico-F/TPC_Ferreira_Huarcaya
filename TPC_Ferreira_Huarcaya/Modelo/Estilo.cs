using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    class Estilo
    {
        public Int16 Id { get; set; }

        public string Descripcion { get; set; }

        public RelacionColores RelacionColores { get; set; }//Un estilo tiene una relacion de colores.

    }
}
