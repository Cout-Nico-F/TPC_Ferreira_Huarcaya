﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    class Admin : Usuario
    {
        public Int16 Id { get; set; }

        //Admin no va a tener id de usuario declarado aca como pusimos en el diagrama de dominio. Lo hereda de Usuario.
    }
}
