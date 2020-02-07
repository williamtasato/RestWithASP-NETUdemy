using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RestWithASPNETUdemy.Model
{
    public class User
    {
        public long? id { get; set; }
        public string Login { get; set; }
        public string AcessKey { get; set; }
    }
}
