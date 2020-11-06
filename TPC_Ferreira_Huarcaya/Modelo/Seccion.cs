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

        public List<Pagina> Paginas { get; set; }// Lista de paginas que componen a la seccion

        public Int32 Costo { get; set; }// Una seccion tendra un costo basado en la suma de los costos de sus paginas.

    }
}
