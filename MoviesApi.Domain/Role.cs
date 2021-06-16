using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Domain
{
    public class Role : EntityBase
    {
        public string RoleName { get; set; }
        public virtual ICollection<User> Users { get; set; }
    }
}
