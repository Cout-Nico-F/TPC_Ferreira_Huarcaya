using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    class Categoria
    {
        //Alo: se que querias que halla una categoria y por momentos la veo, pero por otros no estoy seguro si podemos tenerla. Hay que buscarle la forma
        public Int16 Id { get; set; }

        public string Descripcion { get; set; }

        public int Precio { get; set; } // Precio final que se setea en base a los costos acumulados. Falta ver como resolver eso.

    }
}
