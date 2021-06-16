using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Domain
{
    public class Movie : EntityBase
    {
        public string Name { get; set; }
        public int Duration { get; set; }
        public DateTime ReleaseDate { get; set; }
        public int CategoryId { get; set; }
        public virtual Category Category { get; set; }
        public int FilmDirectorId { get; set; }
        public virtual FilmDirector FilmDirector { get; set; }
        public string Description { get; set; }
        public bool Available { get; set; }
        public virtual ICollection<MovieActor> MovieActors { get; set; } = new HashSet<MovieActor>();
        public virtual ICollection<UserMovie> UserMovies { get; set; } = new HashSet<UserMovie>();
    }
}
