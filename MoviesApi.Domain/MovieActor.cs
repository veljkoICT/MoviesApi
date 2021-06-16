using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Domain
{
    public class MovieActor : EntityBase
    {
        public int MovieId { get; set; }
        public Movie Movie { get; set; }
        public int ActorId { get; set; }
        public Actor Actor { get; set; }
    }
}
