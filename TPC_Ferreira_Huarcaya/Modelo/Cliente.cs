using System;

namespace Modelo
{
    public class Cliente : Usuario
    {
        public Int16 Id { get; set; }

        //el id de usuario lo recibe por herencia asi como los demas atributos de Usuario.
    }
}
