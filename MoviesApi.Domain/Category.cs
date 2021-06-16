using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Domain
{
    public class Category : EntityBase
    {
        public string Name { get; set; }
        public virtual ICollection<Movie> Movies { get; set; } = new HashSet<Movie>();
    }
}
