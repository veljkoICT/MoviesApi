using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.DataTransfer
{
    public class MovieSearchDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Duration { get; set; }
        public DateTime ReleaseDate { get; set; } = DateTime.Now;
        public string CategoryName { get; set; }
        public string FilmDirectorName { get; set; }
        public string Description { get; set; }
        public bool Available { get; set; } = true;
        public IEnumerable<ActorMovieDto> Actors { get; set; }
    }
}
