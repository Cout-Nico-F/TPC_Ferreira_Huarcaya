using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Categoria
    {
        //Alo: se que querias que halla una categoria y por momentos la veo, pero por otros no estoy seguro si podemos tenerla. Hay que buscarle la forma

        //Nico: yo porque queria filtrar por esos datos, pero se me courrio una manera que es filtrar por dropdowns eso en Personalizar.aspx y hacemos una busqueda normal en Catalogo.aspx 
        // no se que tan dificil pueda llegar a ser

        public Int16 Id { get; set; }

        public string Descripcion { get; set; }

        public int Precio { get; set; } // Precio final que se setea en base a los costos acumulados. Falta ver como resolver eso.

    }
}
