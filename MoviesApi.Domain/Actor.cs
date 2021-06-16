using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Domain
{
    public class Actor : EntityBase
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Biography { get; set; }
        public virtual ICollection<MovieActor> MovieActors { get; set; } = new HashSet<MovieActor>();
    }
}
