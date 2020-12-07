using System;

namespace Modelo
{
    public class Funcionalidad
    {
        public Int16 Id { get; set; }

        public string Descripcion { get; set; }

        public Int32 Costo { get; set; } //Se me ocurre usar Costo para cada cosa que suma al Precio final. ( para diferenciar )
        public bool Habilitado { get; set; }

    }
}
