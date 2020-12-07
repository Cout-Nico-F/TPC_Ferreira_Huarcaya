using System;

namespace Modelo
{
    public class Usuario
    {
        //public Int16 IdUsuario { get; set; } la tabla usuario ahora es identity el id
        public Int16 ID { get; set; }
        public string NombreUsuario { get; set; }

        public string Contrasenia { get; set; }

        public Int16 Id_Acceso { get; set; }
        public string Descripcion { get; set; }
        public string Url_Imagen { get; set; }

        public bool Habilitado { get; set; }
    }
}
