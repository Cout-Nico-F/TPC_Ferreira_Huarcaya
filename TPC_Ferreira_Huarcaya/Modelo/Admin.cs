using System;

namespace Modelo
{
    public class Admin : Usuario
    {
        public Int16 Id { get; set; }

        //Admin no va a tener id de usuario declarado aca como pusimos en el diagrama de dominio. Lo hereda de Usuario.
    }
}
