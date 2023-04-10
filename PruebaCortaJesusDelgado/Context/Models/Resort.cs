﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PruebaCortaJesusDelgado.Context.Entities
{
    public class Resort
    {
        public int ResortId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Photo { get; set; }
        public decimal Price { get; set; }
    }
}